<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="BookingsReportDesigner.aspx.cs" Inherits="sample_7_8.BookingsReportDesigner" %>

<%@ Register Assembly="DevExpress.XtraReports.v21.1.Web.WebForms, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<asp:Content ID="header" ContentPlaceHolderID="Head" runat="server">
    <script>
        function customizeMenuActions(s, e) {
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.SaveAs).visible = false;
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.NewReport).visible = false;
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.NewReportViaWizard).visible = false;
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.OpenReport).visible = false;
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.ReportWizard).visible = false;
            e.GetById(DevExpress.Reporting.Designer.Actions.ActionId.Exit).visible = false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:ASPxReportDesigner ID="designer" runat="server" Height="100%">
        <ClientSideEvents CustomizeMenuActions="customizeMenuActions" />
    </dx:ASPxReportDesigner>
</asp:Content>
