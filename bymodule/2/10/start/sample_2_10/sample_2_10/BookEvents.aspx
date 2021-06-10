<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="BookEvents.aspx.cs"
    Inherits="sample_2_10.BookEvents" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <style>
        .demo-venue-selection-container {
            display: flex;
            flex-direction: row;
            height: 300px;
            width: 600px;
            overflow: hidden;
        }

        .demo-venue-combo {
            flex: 1 1 50%;
            overflow: hidden;
        }

        .demo-venue-image {
            flex: 1 1 50%;
            overflow: hidden;
        }
    </style>
</asp:Content>


<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" TypeName="EventsDB.Venue" runat="server"></dx:XpoDataSource>

</asp:Content>
