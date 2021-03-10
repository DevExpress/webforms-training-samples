﻿using sample_7_8.admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_7_8 {
  public partial class BookingsReportDesigner : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      Global_asax.ReportStorage.InitReport<RoomBookingsReport>("RoomBookingsReport");
      designer.OpenReport("RoomBookingsReport");
    }
  }
}