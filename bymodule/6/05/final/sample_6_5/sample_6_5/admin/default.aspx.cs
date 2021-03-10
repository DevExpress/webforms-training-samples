using DevExpress.Xpo;
using EventsDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_6_5 {
  public partial class Dashboard : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      ConfigureGauges();
      ConfigureChart();
    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      unitOfWork = new UnitOfWork();

      if (eventSource != null)
        eventSource.Session = unitOfWork;
    }

    UnitOfWork unitOfWork;

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork != null) {
        unitOfWork.Dispose();
        unitOfWork = null;
      }
    }

    private void ConfigureGauges() {
      int year = DateTime.Now.Year;
      var timeframeStart = new DateTime(year, 1, 1);
      var timeframeEnd = new DateTime(year, 12, 31);

      int eventCount = new XPQuery<Event>(unitOfWork).Count(
        ev => ev.StartDate >= timeframeStart && ev.StartDate <= timeframeEnd);
      int endValue = (int)Math.Ceiling(eventCount * 1.5);
      int endGreenRange = (int)Math.Ceiling(eventCount * 1.1);

      ClientScript.RegisterStartupScript(this.GetType(), "initEventGauge",
        $"const eventCount={eventCount}; const endValue={endValue}; const endGreenRange={endGreenRange};", true);

      int capReqCount = new XPQuery<CapacityRequirement>(unitOfWork).Count(
        cp => cp.Event.StartDate >= timeframeStart && cp.Event.StartDate <= timeframeEnd);
      int roomBookingCount = new XPQuery<RoomBooking>(unitOfWork).Count(
        rb => rb.CapacityRequirement.Event.StartDate >= timeframeStart && rb.CapacityRequirement.Event.StartDate <= timeframeEnd);
      int capReqEndValue = (int)Math.Ceiling(capReqCount * 1.2);

      ClientScript.RegisterStartupScript(this.GetType(), "initCapReqGauge",
        $"const capReqCount={capReqCount}; const roomBookingCount={roomBookingCount}; const capReqEndValue={capReqEndValue};", true);
    }

    private void ConfigureChart() {
      var chartData = from venue in new XPQuery<Venue>(unitOfWork)
                      select new {
                        Venue = venue.Name,
                        Events = venue.Events.Count(),
                        RoomBookings = venue.Rooms.Sum(room => room.Bookings.Count())
                      };
      venueChart.DataSource = chartData;
    }
  }
}