using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_3_13 {
  public class Data {
    public int Id { get; set; }
    public string Name { get; set; }
    public int Portion { get; set; }
  }

  public partial class _default : System.Web.UI.Page {
    private List<Data> rows = new List<Data> {
      new Data { Id=1, Name = "Pete", Portion = 30 },
      new Data { Id=2, Name = "Anna", Portion = 60 },
      new Data { Id=3, Name = "Jim", Portion = 45 }
    };

    protected void Page_Load(object sender, EventArgs e) {
      grid.DataSource = rows;
      grid.DataBind();
    }
  }
}