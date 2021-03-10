using DevExpress.Xpo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_2_8 {
  public partial class HomePage : System.Web.UI.Page {
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