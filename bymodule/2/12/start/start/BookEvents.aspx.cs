using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Xpo;
using EventsDB;

namespace start {
  public partial class WebForm2 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      venuesSource.Session = new UnitOfWork();
    }

    private Venue GetSelectedVenue() {
      return venuesSource.Session.GetObjectByKey<Venue>(new Guid((string) venueCombo.Value));
    }

    protected void ASPxButton1_Click(object sender, EventArgs e) {
      using (UnitOfWork uow = new UnitOfWork()) {
        new EventRequest(uow) {
          ContactName = nameEdit.Text,
          ContactEmail = emailEdit.Text,
          EventName = eventNameEdit.Text,
          EventDescription = eventDescriptionEdit.Text,
          StartDate = dateFromEdit.Date,
          EndDate = dateToEdit.Date,
          Venue = uow.GetObjectByKey<Venue>(GetSelectedVenue().Oid)
        }.Save();

        uow.CommitChanges();
        Response.Redirect("BookingConfirmation.aspx");
      }
    }
  }
}