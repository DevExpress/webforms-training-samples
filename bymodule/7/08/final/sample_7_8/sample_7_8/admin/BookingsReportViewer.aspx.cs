using sample_7_8.admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_7_8 {
  public partial class BookingsReportViewer : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      if (this.Context.Request.Browser.IsMobileDevice)
        ASPxWebDocumentViewer1.MobileMode = true;

      Global_asax.ReportStorage.InitReport<RoomBookingsReport>("RoomBookingsReport");
      ASPxWebDocumentViewer1.OpenReport("RoomBookingsReport");
    }
  }
}