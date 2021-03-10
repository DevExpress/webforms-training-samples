using DevExpress.Data.Filtering;
using DevExpress.Web;
using DevExpress.Xpo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_3_3 {
  public partial class VenuesRooms : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      unitOfWork = new UnitOfWork();

      if (venueSource != null && roomSource != null && capacitySource != null)
        venueSource.Session = roomSource.Session = capacitySource.Session = unitOfWork;
    }

    UnitOfWork unitOfWork;

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork != null) {
        unitOfWork.Dispose();
        unitOfWork = null;
      }
    }

    protected void roomGrid_BeforePerformDataSelect(object sender, EventArgs e) {
      var key = (sender as ASPxGridView).GetMasterRowKeyValue();
      roomSource.Criteria = new BinaryOperator("Venue.Oid", key).ToString();
    }

    protected void capacityGrid_BeforePerformDataSelect(object sender, EventArgs e) {
      var key = (sender as ASPxGridView).GetMasterRowKeyValue();
      capacitySource.Criteria = new BinaryOperator("Room.Oid", key).ToString();
    }
  }
}