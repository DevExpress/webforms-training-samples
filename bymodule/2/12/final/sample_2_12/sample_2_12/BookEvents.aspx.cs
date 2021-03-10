using DevExpress.Web;
using DevExpress.Xpo;
using EventsDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_2_12 {
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

    protected void submitButton_Click(object sender, EventArgs e) {
      using (UnitOfWork uow = new UnitOfWork()) {
        new EventRequest(uow) {
          ContactName = nameEdit.Text,
          ContactEmail = emailEdit.Text,
          EventName = eventNameEdit.Text,
          EventDescription = eventDescriptionEdit.Text,
          StartDate = dateFromEdit.Date,
          EndDate = dateToEdit.Date,
          Venue = uow.GetObjectByKey<Venue>(new Guid((string)venueCombo.Value))
        }.Save();

        uow.CommitChanges();
        Response.Redirect("BookingConfirmation.aspx");
      }
    }

    protected void callback_Callback(object source, DevExpress.Web.CallbackEventArgs e) {
      var venue = unitOfWork.GetObjectByKey<Venue>(new Guid((string)venueCombo.Value));
      venueImage.ContentBytes = venue.PhotoBytes;
      e.Result = ASPxCallback.GetRenderResult(venueImage);
    }
  }
}