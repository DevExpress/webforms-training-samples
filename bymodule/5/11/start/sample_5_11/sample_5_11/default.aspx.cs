using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Xpo;

namespace sample_5_11 {
  public partial class _default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    UnitOfWork unitOfWork;
    protected override void OnInit(EventArgs e) {
      base.OnInit(e);
      unitOfWork = new UnitOfWork();
      fileItemSource.Session = unitOfWork;
    }

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork.InTransaction)
        unitOfWork.CommitChanges();
    }

    protected void XpoDataSource1_Inserted(object sender, XpoDataSourceInsertedEventArgs e) {
      if (unitOfWork.InTransaction)
        unitOfWork.CommitChanges();
    }
  }
}