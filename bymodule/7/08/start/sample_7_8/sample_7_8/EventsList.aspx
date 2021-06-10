<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="EventsList.aspx.cs"
    Inherits="sample_7_8.EventsList" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="eventSource" runat="server" TypeName="EventsDB.Event"></dx:XpoDataSource>
</asp:Content>
