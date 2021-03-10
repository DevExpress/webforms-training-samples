<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="BookEvents.aspx.cs" Inherits="start.WebForm2" %>
<%@ Register assembly="DevExpress.Xpo.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxValidationSummary ID="ASPxValidationSummary1" runat="server">
    </dx:ASPxValidationSummary>
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Contact Name">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="nameEdit" runat="server" Width="170px">
        <ValidationSettings>
            <RequiredField ErrorText="The Contact Name is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>
    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Contact Email">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="emailEdit" runat="server" Width="170px">
        <ValidationSettings>
            <RegularExpression ErrorText="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            <RequiredField ErrorText="The Contact Email is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>
    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Event Name">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="eventNameEdit" runat="server" Width="170px">
        <ValidationSettings>
            <RequiredField ErrorText="The Event Name is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>
    <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Description and Comments">
    </dx:ASPxLabel>
    <dx:ASPxMemo ID="eventDescriptionEdit" runat="server" Height="71px" Width="170px">
    </dx:ASPxMemo>
    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Start Date">
    </dx:ASPxLabel>
    <dx:ASPxDateEdit ID="dateFromEdit" runat="server">
        <ValidationSettings>
            <RequiredField ErrorText="The Start Date is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxDateEdit>
    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="End Date">
    </dx:ASPxLabel>
    <dx:ASPxDateEdit ID="dateToEdit" runat="server">
        <ValidationSettings>
            <RequiredField ErrorText="The End Date is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxDateEdit>
    <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Venue">
    </dx:ASPxLabel>
    <dx:ASPxComboBox ID="venueCombo" runat="server" DataSourceID="venuesSource" TextField="Name" ValueField="Oid">
        <ValidationSettings>
            <RequiredField ErrorText="The Venue is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxComboBox>
    <dx:XpoDataSource ID="venuesSource" runat="server" TypeName="EventsDB.Venue">
    </dx:XpoDataSource>
    <br />
    <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Submit Event Request">
    </dx:ASPxButton>
&nbsp;
</asp:Content>
