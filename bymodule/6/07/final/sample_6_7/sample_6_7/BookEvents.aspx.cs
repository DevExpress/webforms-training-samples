using DevExpress.Web;
using DevExpress.Xpo;
using EventsDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_6_7 {
  public partial class BookEvents : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      unitOfWork = new UnitOfWork();

      if (venueSource != null)
        venueSource.Session = unitOfWork;
    }

    UnitOfWork unitOfWork;

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork != null) {
        unitOfWork.Dispose();
        unitOfWork = null;
      }
    }
  }
}