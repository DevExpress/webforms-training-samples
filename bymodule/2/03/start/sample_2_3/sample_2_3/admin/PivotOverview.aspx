﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="PivotOverview.aspx.cs"
    Inherits="sample_2_3.PivotOverview" %>

<%@ Register Assembly="DevExpress.Xpo.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <style>
        .flex-container {
            display: flex;
            flex-direction: column;
            height: 80vh;
            overflow: hidden;
        }

        .flex-row {
            display: flex;
            flex-direction: row;
        }

        .flex-cell-50 {
            flex: 1 1 50%;
            overflow: hidden;
        }

        .flex-cell-70 {
            flex: 1 1 70%;
            overflow: hidden;
        }

        .flex-cell-30 {
            flex: 1 1 30%;
            overflow: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="roomBookingSource" runat="server" TypeName="EventsDB.RoomBooking"></dx:XpoDataSource>

    <div class="flex-container">
        <div class="flex-row flex-cell-70">
        </div>
        <div class="flex-row flex-cell-30">
        </div>
    </div>
</asp:Content>
