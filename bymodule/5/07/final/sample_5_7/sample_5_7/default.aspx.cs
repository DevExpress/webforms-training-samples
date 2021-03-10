using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_5_7 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      if (!IsPostBack) {
        formLayout.DataSource = new EventRequestSubmission {
          EventName = "Birthday party",
          Description = "Seriously cool event",
          StartDate = DateTime.Today,
          EndDate = DateTime.Today.AddDays(3),
          TargetCapacity = 100
        };
        formLayout.DataBind();
      }
    }

    protected void submitButton_Click(object sender, EventArgs e) {
      var eventName =
        formLayout.GetNestedControlValueByFieldName("EventName");

      // ...
      // persist changes
    }
  }
}