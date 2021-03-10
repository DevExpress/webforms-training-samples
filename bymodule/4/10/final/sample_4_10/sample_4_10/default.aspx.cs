using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MasterDetailGrids.Data;

namespace sample_4_10 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      categoryCombo.DataSource =
        (from car in DataSources.Instance.Cars
         select car.Category).Distinct();
      categoryCombo.DataBind();

      if (categoryCombo.SelectedIndex >= 0) {
        carCombo.DataSource =
          from car in DataSources.Instance.Cars
          where car.Category == (string)categoryCombo.Value
          select new CarDetails {
            Id = car.Id,
            CarInfo = String.Format("{0}/{1} ({2})", car.Trademark, car.Model, car.Price)
          };
        carCombo.DataBind();
      }
    }

    public class CarDetails {
      public int Id { get; set; }
      public string CarInfo { get; set; }
    }

    protected void carCombo_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
      if (e.Parameter == "Yes") {
        var dataSource = carCombo.DataSource as IEnumerable<CarDetails>;
        carCombo.DataSource = dataSource.OrderBy(cd => cd.CarInfo);
        carCombo.DataBind();
      }
    }
  }
}
