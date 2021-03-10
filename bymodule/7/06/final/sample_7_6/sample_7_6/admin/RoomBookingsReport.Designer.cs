namespace sample_7_6.admin {
  partial class RoomBookingsReport {
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary> 
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing) {
      if (disposing && (components != null)) {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent() {
      this.components = new System.ComponentModel.Container();
      DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
      this.xpObjectSource1 = new DevExpress.Xpo.XPObjectSource(this.components);
      this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
      this.BottomMargin = new DevExpress.XtraReports.UI.BottomMarginBand();
      this.Detail = new DevExpress.XtraReports.UI.DetailBand();
      this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
      this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
      this.groupHeaderBand1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
      this.groupHeaderBand2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
      this.groupFooterBand1 = new DevExpress.XtraReports.UI.GroupFooterBand();
      this.xrPanel1 = new DevExpress.XtraReports.UI.XRPanel();
      this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
      this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
      this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
      this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
      this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
      this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
      this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
      this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
      this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
      this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
      this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
      this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
      this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
      ((System.ComponentModel.ISupportInitialize)(this.xpObjectSource1)).BeginInit();
      ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
      ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
      ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
      // 
      // xpObjectSource1
      // 
      this.xpObjectSource1.EntityTypeString = "EventsDB.RoomBooking, DXTraining.EventsDB, Version=1.0.5.0, Culture=neutral, Publ" +
    "icKeyToken=null";
      this.xpObjectSource1.Name = "xpObjectSource1";
      // 
      // TopMargin
      // 
      this.TopMargin.Name = "TopMargin";
      // 
      // BottomMargin
      // 
      this.BottomMargin.Name = "BottomMargin";
      // 
      // Detail
      // 
      this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
      this.Detail.HeightF = 40.87499F;
      this.Detail.Name = "Detail";
      // 
      // ReportHeader
      // 
      this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1});
      this.ReportHeader.HeightF = 70.49999F;
      this.ReportHeader.Name = "ReportHeader";
      // 
      // xrLabel1
      // 
      this.xrLabel1.Font = new System.Drawing.Font("Arial", 20F, System.Drawing.FontStyle.Bold);
      this.xrLabel1.LocationFloat = new DevExpress.Utils.PointFloat(0F, 10.00001F);
      this.xrLabel1.Multiline = true;
      this.xrLabel1.Name = "xrLabel1";
      this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96F);
      this.xrLabel1.SizeF = new System.Drawing.SizeF(640F, 60.49998F);
      this.xrLabel1.StylePriority.UseFont = false;
      this.xrLabel1.Text = "Venue/Room Occupation";
      // 
      // groupHeaderBand1
      // 
      this.groupHeaderBand1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPanel1});
      this.groupHeaderBand1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("Room.Venue.Oid", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
      this.groupHeaderBand1.HeightF = 71.875F;
      this.groupHeaderBand1.Level = 1;
      this.groupHeaderBand1.Name = "groupHeaderBand1";
      // 
      // groupHeaderBand2
      // 
      this.groupHeaderBand2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel3});
      this.groupHeaderBand2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("Room.Oid", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
      this.groupHeaderBand2.HeightF = 38.62502F;
      this.groupHeaderBand2.Name = "groupHeaderBand2";
      // 
      // groupFooterBand1
      // 
      this.groupFooterBand1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
      this.groupFooterBand1.HeightF = 37.5F;
      this.groupFooterBand1.Name = "groupFooterBand1";
      // 
      // xrPanel1
      // 
      this.xrPanel1.BackColor = System.Drawing.Color.Maroon;
      this.xrPanel1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPictureBox1,
            this.xrLabel2});
      this.xrPanel1.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
      this.xrPanel1.Name = "xrPanel1";
      this.xrPanel1.SizeF = new System.Drawing.SizeF(650F, 71.875F);
      this.xrPanel1.StylePriority.UseBackColor = false;
      // 
      // xrLabel2
      // 
      this.xrLabel2.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Room].[Venue].[Name]")});
      this.xrLabel2.Font = new System.Drawing.Font("Arial", 18F);
      this.xrLabel2.ForeColor = System.Drawing.Color.White;
      this.xrLabel2.LocationFloat = new DevExpress.Utils.PointFloat(10.00001F, 10.00001F);
      this.xrLabel2.Multiline = true;
      this.xrLabel2.Name = "xrLabel2";
      this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96F);
      this.xrLabel2.SizeF = new System.Drawing.SizeF(508.3333F, 51.87498F);
      this.xrLabel2.StylePriority.UseFont = false;
      this.xrLabel2.StylePriority.UseForeColor = false;
      this.xrLabel2.Text = "xrLabel2";
      // 
      // xrPictureBox1
      // 
      this.xrPictureBox1.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "ImageSource", "[Room].[Venue].[Photo]")});
      this.xrPictureBox1.LocationFloat = new DevExpress.Utils.PointFloat(570.2083F, 10.00001F);
      this.xrPictureBox1.Name = "xrPictureBox1";
      this.xrPictureBox1.SizeF = new System.Drawing.SizeF(69.79163F, 51.87498F);
      this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.Squeeze;
      // 
      // xrLabel3
      // 
      this.xrLabel3.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Room].[Name]")});
      this.xrLabel3.Font = new System.Drawing.Font("Arial", 16F);
      this.xrLabel3.LocationFloat = new DevExpress.Utils.PointFloat(26.04167F, 0F);
      this.xrLabel3.Multiline = true;
      this.xrLabel3.Name = "xrLabel3";
      this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96F);
      this.xrLabel3.SizeF = new System.Drawing.SizeF(481.25F, 38.62502F);
      this.xrLabel3.StylePriority.UseFont = false;
      this.xrLabel3.Text = "xrLabel3";
      // 
      // xrTable1
      // 
      this.xrTable1.LocationFloat = new DevExpress.Utils.PointFloat(39.58333F, 10.00001F);
      this.xrTable1.Name = "xrTable1";
      this.xrTable1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96F);
      this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
      this.xrTable1.SizeF = new System.Drawing.SizeF(584.375F, 25F);
      // 
      // xrTableRow1
      // 
      this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell2,
            this.xrTableCell4,
            this.xrTableCell3});
      this.xrTableRow1.Name = "xrTableRow1";
      this.xrTableRow1.Weight = 1D;
      // 
      // xrTableCell1
      // 
      this.xrTableCell1.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[CapacityRequirement].[Event].[Name]")});
      this.xrTableCell1.Multiline = true;
      this.xrTableCell1.Name = "xrTableCell1";
      this.xrTableCell1.Text = "xrTableCell1";
      this.xrTableCell1.Weight = 1.1843003255295974D;
      // 
      // xrTableCell2
      // 
      this.xrTableCell2.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[CapacityRequirement].[Name]")});
      this.xrTableCell2.Multiline = true;
      this.xrTableCell2.Name = "xrTableCell2";
      this.xrTableCell2.Text = "xrTableCell2";
      this.xrTableCell2.Weight = 1.3412975657243904D;
      // 
      // xrTableCell3
      // 
      this.xrTableCell3.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[EndTime]")});
      this.xrTableCell3.Multiline = true;
      this.xrTableCell3.Name = "xrTableCell3";
      this.xrTableCell3.Text = "xrTableCell3";
      this.xrTableCell3.TextFormatString = "{0:HH:mm}";
      this.xrTableCell3.Weight = 0.64505168261109214D;
      // 
      // xrTableCell4
      // 
      this.xrTableCell4.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[StartTime]")});
      this.xrTableCell4.Multiline = true;
      this.xrTableCell4.Name = "xrTableCell4";
      this.xrTableCell4.Text = "xrTableCell4";
      this.xrTableCell4.TextFormatString = "{0:HH:mm}";
      this.xrTableCell4.Weight = 0.65870163436100226D;
      // 
      // xrTable2
      // 
      this.xrTable2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
      this.xrTable2.LocationFloat = new DevExpress.Utils.PointFloat(220.3125F, 9.999974F);
      this.xrTable2.Name = "xrTable2";
      this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96F);
      this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
      this.xrTable2.SizeF = new System.Drawing.SizeF(403.6458F, 25F);
      this.xrTable2.StylePriority.UseFont = false;
      // 
      // xrTableRow2
      // 
      this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell6,
            this.xrTableCell7});
      this.xrTableRow2.Name = "xrTableRow2";
      this.xrTableRow2.Weight = 1D;
      // 
      // xrTableCell6
      // 
      this.xrTableCell6.Multiline = true;
      this.xrTableCell6.Name = "xrTableCell6";
      this.xrTableCell6.Text = "Total bookings for [Room.Name]";
      this.xrTableCell6.Weight = 3.0364581298828126D;
      // 
      // xrTableCell7
      // 
      this.xrTableCell7.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumCount()")});
      this.xrTableCell7.Multiline = true;
      this.xrTableCell7.Name = "xrTableCell7";
      this.xrTableCell7.StylePriority.UseTextAlignment = false;
      xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
      this.xrTableCell7.Summary = xrSummary1;
      this.xrTableCell7.Text = "xrTableCell7";
      this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
      this.xrTableCell7.Weight = 1D;
      // 
      // RoomBookingsReport
      // 
      this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.TopMargin,
            this.BottomMargin,
            this.Detail,
            this.ReportHeader,
            this.groupHeaderBand1,
            this.groupHeaderBand2,
            this.groupFooterBand1});
      this.ComponentStorage.AddRange(new System.ComponentModel.IComponent[] {
            this.xpObjectSource1});
      this.DataSource = this.xpObjectSource1;
      this.Font = new System.Drawing.Font("Arial", 9.75F);
      this.Version = "20.1";
      ((System.ComponentModel.ISupportInitialize)(this.xpObjectSource1)).EndInit();
      ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
      ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
      ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

    }

    #endregion

    private DevExpress.Xpo.XPObjectSource xpObjectSource1;
    private DevExpress.XtraReports.UI.TopMarginBand TopMargin;
    private DevExpress.XtraReports.UI.BottomMarginBand BottomMargin;
    private DevExpress.XtraReports.UI.DetailBand Detail;
    private DevExpress.XtraReports.UI.XRTable xrTable1;
    private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
    private DevExpress.XtraReports.UI.ReportHeaderBand ReportHeader;
    private DevExpress.XtraReports.UI.XRLabel xrLabel1;
    private DevExpress.XtraReports.UI.GroupHeaderBand groupHeaderBand1;
    private DevExpress.XtraReports.UI.XRPanel xrPanel1;
    private DevExpress.XtraReports.UI.XRPictureBox xrPictureBox1;
    private DevExpress.XtraReports.UI.XRLabel xrLabel2;
    private DevExpress.XtraReports.UI.GroupHeaderBand groupHeaderBand2;
    private DevExpress.XtraReports.UI.XRLabel xrLabel3;
    private DevExpress.XtraReports.UI.GroupFooterBand groupFooterBand1;
    private DevExpress.XtraReports.UI.XRTable xrTable2;
    private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
    private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
  }
}
