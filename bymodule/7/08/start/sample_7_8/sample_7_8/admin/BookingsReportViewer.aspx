<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="BookingsReportViewer.aspx.cs" Inherits="sample_7_8.BookingsReportViewer" %>

<%@ Register Assembly="DevExpress.XtraReports.v21.1.Web.WebForms, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <style>
        .demo-content {
            overflow-x: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server"
        ReportSourceId="sample_7_8.admin.RoomBookingsReport" Height="100%">
    </dx:ASPxWebDocumentViewer>
</asp:Content>
