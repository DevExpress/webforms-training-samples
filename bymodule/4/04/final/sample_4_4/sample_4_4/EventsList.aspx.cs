using DevExpress.Xpo;
using EventsDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_4_4 {
  public partial class EventsList : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      if (eventsGrid.FocusedRowIndex == -1)
        eventsGrid.DataBind();

      ConfigureScheduler();
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


    void ConfigureScheduler() {
      if (eventsGrid.GetRow(eventsGrid.FocusedRowIndex) is Event selectedEvent) {
        scheduler.LimitInterval.Start = selectedEvent.StartDate;
        scheduler.LimitInterval.End = selectedEvent.EndDate.AddDays(1);
        int days = ((int)(selectedEvent.EndDate - selectedEvent.StartDate).TotalDays) + 1;
        scheduler.DayView.DayCount = days;

        scheduler.DayView.VisibleTime.Start = new TimeSpan(
          selectedEvent.CapacityRequirements.Min(cr => cr.StartTime.TimeOfDay.Ticks)) -
          new TimeSpan(0, 30, 0);
        scheduler.DayView.VisibleTime.End = new TimeSpan(
          selectedEvent.CapacityRequirements.Max(cr => cr.EndTime.TimeOfDay.Ticks)) +
          new TimeSpan(0, 30, 0);

        scheduler.AppointmentDataSource = selectedEvent.CapacityRequirements;
        scheduler.DataBind();
      }
    }
  }
}