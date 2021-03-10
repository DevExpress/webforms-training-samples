using DevExpress.Spreadsheet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_6_9 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        var sheet = ASPxSpreadsheet1.Document.Worksheets[0];
        sheet.Cells["E10"].Value = "An initial value";

        sheet.Cells["A1"].Value = 1;
        sheet.Cells["A2"].Value = 2;
        sheet.Cells["A3"].Value = 3;
        sheet.Cells["A4"].Value = 4;
        sheet.Cells["A6"].Formula = "=SUM(A1:A4)";

        var chart =
          sheet.Charts.Add(DevExpress.Spreadsheet.Charts.ChartType.BarClustered,
          sheet.Range.Parse("A1:A4"));
        chart.Width = 1000;
        chart.Height = 500;
        chart.Move(50, 600);
      }
    }

    protected void ASPxSpreadsheet1_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
      if (e.Parameter == "sampleData") {
        var sheet = ASPxSpreadsheet1.Document.Sheets.ActiveSheet;
        if (sheet is Worksheet worksheet) {
          var cell = worksheet.GetSelectedRanges()[0].First();
          cell.Value = "Test data";
          worksheet.Cells[cell.RowIndex + 1, cell.ColumnIndex].Value = "More test data here";
        }
      }
    }
  }
}