<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="PivotOverview.aspx.cs"
    Inherits="sample_3_10.PivotOverview" %>

<%@ Register Assembly="DevExpress.Xpo.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <style>
        .demo-flex-container {
            display: flex;
            flex-direction: column;
            height: 80vh;
            overflow: hidden;
        }

        .demo-flex-row {
            display: flex;
            flex-direction: row;
        }

        .demo-flex-cell-50 {
            flex: 1 1 50%;
            overflow: hidden;
        }

        .demo-flex-cell-70 {
            flex: 1 1 70%;
            overflow: hidden;
        }

        .demo-flex-cell-30 {
            flex: 1 1 30%;
            overflow: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="roomBookingSource" runat="server" TypeName="EventsDB.RoomBooking"></dx:XpoDataSource>

    <div class="demo-flex-container">
        <div class="demo-flex-row demo-flex-cell-70">
        </div>
        <div class="demo-flex-row demo-flex-cell-30">
        </div>
    </div>
</asp:Content>
