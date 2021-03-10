using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using DevExpress.Xpo.DB;
using DevExpress.Xpo.Metadata;
using DevExpress.Xpo;
using System.IO;
using System.Text;
using CountriesDB.EF.Populate;
using Countries;
using CountriesDB.EF;

namespace DataAccessScenarios {
  public class Global : System.Web.HttpApplication {
    protected void Application_Start(object sender, EventArgs e) {
      // EF Code-First connection setup tries to attach a local database
      // if DataDirectory is set. There are other ways of working around this,
      // but for simplicity we just unset the value.
      AppDomain.CurrentDomain.SetData("DataDirectory", null);

      DemoDatabase.Populate();

      string connStr = new CountriesDBContext().Database.Connection.ConnectionString;
      XPDictionary dict = new ReflectionDictionary();
      dict.GetDataStoreSchema(typeof(Countries.Country).Assembly);
      IDataStore store = XpoDefault.GetConnectionProvider(
        connStr, AutoCreateOption.SchemaAlreadyExists);
      XpoDefault.DataLayer = new ThreadSafeDataLayer(dict, store);

      XpoDefault.Session = null;
    }
  }
}