﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="default.aspx.cs"
    Inherits="sample_7_6.Dashboard" %>

<%@ Register Assembly="DevExpress.Xpo.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <%--    <script src="/Scripts/jquery-3.6.0.min.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="/Content/dx.common.css" />
    <link rel="stylesheet" type="text/css" href="/Content/dx.light.css" />
    <script src="/Scripts/dx.viz.js" type="text/javascript"></script>--%>

    <style>
        .demo-dashboard-container {
            display: flex;
            flex-direction: column;
            height: 80vh;
            overflow: hidden;
        }

        .demo-dashboard-row {
            display: flex;
            flex-direction: row;
        }

        .demo-dashboard-chart-placeholder {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .demo-dashboard-cell-50 {
            flex: 1 1 50%;
            overflow: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="eventSource" runat="server" TypeName="EventsDB.Event"></dx:XpoDataSource>

    <div class="demo-dashboard-container">
        <div class="demo-dashboard-cell-50 demo-dashboard-row">
            <div id="eventGauge" class="demo-dashboard-cell-50"></div>
            <div id="capReqGauge" class="demo-dashboard-cell-50"></div>
        </div>
        <div class="demo-dashboard-cell-50 demo-dashboard-chart-placeholder">
            <dx:ASPxLabel runat="server" Text="Chart to be added"></dx:ASPxLabel>
        </div>
    </div>
</asp:Content>
