using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MasterDetailGrids.Data;

namespace sample_4_8 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      categoryCombo.DataSource =
        (from car in DataSources.Instance.Cars
         select car.Category).Distinct();
      categoryCombo.DataBind();
    }
  }
}
