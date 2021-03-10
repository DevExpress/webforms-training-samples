using DevExpress.Xpo;
using DevExpress.XtraPrinting;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_7_3 {
  public partial class PivotOverview : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      unitOfWork = new UnitOfWork();

      if (roomBookingSource != null)
        roomBookingSource.Session = unitOfWork;
    }

    UnitOfWork unitOfWork;

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork != null) {
        unitOfWork.Dispose();
        unitOfWork = null;
      }
    }

    protected void exportButton_Click(object sender, EventArgs e) {
      using (PrintingSystem printingSystem = new PrintingSystem()) {
        using (PrintableComponentLink link = new PrintableComponentLink()) {
          link.Component = pivotGridExporter;
          link.PrintingSystem = printingSystem;
          link.CreateDocument();
          using (MemoryStream stream = new MemoryStream()) {
            link.PrintingSystem.ExportToPdf(stream);
            Response.Clear();
            Response.Buffer = false;
            Response.AppendHeader("Content-Type", "application/pdf");
            Response.AppendHeader("Content-Transfer-Encoding", "binary");
            Response.AppendHeader("Content-Disposition", "attachment; filename=output.pdf");
            Response.BinaryWrite(stream.GetBuffer());
            Response.End();
          }
        }
      }
    }
  }
}