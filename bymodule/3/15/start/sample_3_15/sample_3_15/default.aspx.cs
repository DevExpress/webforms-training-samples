using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CountriesDB.EF;
using System.Data.Entity.Infrastructure;
using Microsoft.AspNet.EntityDataSource;

namespace sample_3_15 {
  public partial class Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected void EntityDataSource1_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e) {
      var dbcontext = new CountriesDBContext();
      e.Context = ((IObjectContextAdapter)dbcontext).ObjectContext;
    }
  }
}
