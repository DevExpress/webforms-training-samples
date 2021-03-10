using EventsDB.Populate;
using System;

namespace sample_7_8 {
  public class Global_asax : System.Web.HttpApplication {
    void Application_Start(object sender, EventArgs e) {
      DevExpress.Web.ASPxWebControl.CallbackError += new EventHandler(Application_Error);

      DemoDatabase.Populate(threadSafe: true, searchAllAssemblies: true);
      DevExpress.XtraReports.Web.ASPxWebDocumentViewer.StaticInitialize();
    }

    void Application_Error(object sender, EventArgs e) {
      // Code that runs when an unhandled error occurs
    }
  }
}