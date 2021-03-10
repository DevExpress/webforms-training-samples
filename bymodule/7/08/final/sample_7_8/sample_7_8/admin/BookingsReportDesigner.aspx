<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="BookingsReportDesigner.aspx.cs" Inherits="sample_7_8.BookingsReportDesigner" %>

<%@ Register Assembly="DevExpress.XtraReports.v20.1.Web.WebForms, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<asp:Content ID="header" ContentPlaceHolderID="Head" runat="server">
    <script>
        function customizeMenuActions(s, e) {
            e.GetById(DevExpress.Designer.Report.ActionId.SaveAs).visible = false;
            e.GetById(DevExpress.Designer.Report.ActionId.NewReport).visible = false;
            e.GetById(DevExpress.Designer.Report.ActionId.NewReportViaWizard).visible = false;
            e.GetById(DevExpress.Designer.Report.ActionId.OpenReport).visible = false;
            e.GetById(DevExpress.Designer.Report.ActionId.ReportWizard).visible = false;
            e.GetById(DevExpress.Designer.Report.ActionId.Exit).visible = false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:ASPxReportDesigner ID="designer" runat="server" Height="100%">
        <ClientSideEvents CustomizeMenuActions="customizeMenuActions" />
    </dx:ASPxReportDesigner>
</asp:Content>
