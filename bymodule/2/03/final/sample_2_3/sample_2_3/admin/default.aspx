<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="default.aspx.cs"
    Inherits="sample_2_3.Dashboard" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <%--    <script src="/Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="/Content/dx.common.css" />
    <link rel="stylesheet" type="text/css" href="/Content/dx.light.css" />
    <script src="/Scripts/dx.viz.js" type="text/javascript"></script>--%>

    <style>
        .dashboard-container {
            display: flex;
            flex-direction: column;
            height: 80vh;
            overflow: hidden;
        }

        .dashboard-row {
            display: flex;
            flex-direction: row;
        }

        .dashboard-chart-placeholder {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .dashboard-cell-50 {
            flex: 1 1 50%;
            overflow: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="eventSource" runat="server" TypeName="EventsDB.Event"></dx:XpoDataSource>

    <div class="dashboard-container">
        <div class="dashboard-cell-50 dashboard-row">
        </div>
        <div class="dashboard-cell-50 dashboard-chart-placeholder">
            Chart to be added
        </div>
    </div>
</asp:Content>
