using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sample_4_6.Data;
using System.Text.RegularExpressions;

namespace sample_4_6 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      trademarksGrid.DataSource =
        (from car in DataSources.Instance.Cars
         select car.Trademark).Distinct().Select(tm => new TrademarkInfo { Trademark = tm });

      trademarksGrid.DataBind();

      if (trademarksGrid.FocusedRowIndex >= 0 &&
        trademarksGrid.GetRow(trademarksGrid.FocusedRowIndex) is TrademarkInfo selectedTrademark) {
        detailGrid.DataSource =
          from car in DataSources.Instance.Cars
          where car.Trademark == selectedTrademark.Trademark
          select car;
        detailGrid.DataBind();
      }
    }
  }

  public class TrademarkInfo {
    public string Trademark { get; set; }
  }
}