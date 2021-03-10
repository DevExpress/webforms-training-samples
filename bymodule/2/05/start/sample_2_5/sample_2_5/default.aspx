<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="default.aspx.cs"
    Inherits="sample_2_5.HomePage" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>
</asp:Content>
