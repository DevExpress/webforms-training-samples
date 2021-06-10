<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="VenuesRooms.aspx.cs"
    Inherits="sample_7_8.VenuesRooms" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>
    <dx:XpoDataSource ID="roomSource" runat="server" TypeName="EventsDB.Room"></dx:XpoDataSource>
    <dx:XpoDataSource ID="capacitySource" runat="server" TypeName="EventsDB.RoomCapacity"></dx:XpoDataSource>
</asp:Content>
