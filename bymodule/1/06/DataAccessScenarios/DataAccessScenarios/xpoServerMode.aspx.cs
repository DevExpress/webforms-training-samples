using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DevExpress.Xpo;

namespace DataAccessScenarios {
  public partial class XpoServerModePage : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    Session session;

    protected void Page_Init(object sender, EventArgs e) {
      session = new Session();
      XpoDataSource1.Session = session;
    }

    protected override void Render(HtmlTextWriter writer) {
      base.Render(writer);
      session.Dispose();
      session = null;
    }
  }
}
