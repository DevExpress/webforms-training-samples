using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using DevExpress.Data.Filtering;
using DevExpress.Web;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using DevExpress.Xpo.Metadata;

namespace sample_5_11 {
  public class Global_asax : System.Web.HttpApplication {
    void Application_Start(object sender, EventArgs e) {
      DevExpress.Web.ASPxWebControl.CallbackError += new EventHandler(Application_Error);

      XPDictionary dict = new ReflectionDictionary();
      dict.GetDataStoreSchema(typeof(FileItem).Assembly);
      var datastore = XpoDefault.GetConnectionProvider(
        MSSqlConnectionProvider.GetConnectionString(@"(localdb)\mssqllocaldb", "FileManager"),
        DevExpress.Xpo.DB.AutoCreateOption.DatabaseAndSchema);
      XpoDefault.DataLayer = new ThreadSafeDataLayer(dict, datastore);

      XpoDefault.Session = null;

      using (UnitOfWork uow = new UnitOfWork()) {
        var rootFolder =
          uow.FindObject<FileItem>(
          CriteriaOperator.And(new BinaryOperator("Name", "Root"),
          new BinaryOperator("IsFolder", true)));
        if (rootFolder == null) {
          new FileItem(uow) {
            Name = "Root",
            IsFolder = true
          };
          uow.CommitChanges();
        }
      }
    }

    void Application_End(object sender, EventArgs e) {
      // Code that runs on application shutdown
    }

    void Application_Error(object sender, EventArgs e) {
      // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) {
      // Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e) {
      // Code that runs when a session ends. 
      // Note: The Session_End event is raised only when the sessionstate mode
      // is set to InProc in the Web.config file. If session mode is set to StateServer 
      // or SQLServer, the event is not raised.
    }
  }
}