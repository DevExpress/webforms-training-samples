<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="BookEvents.aspx.cs"
    Inherits="sample_2_12.BookEvents" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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

    <script>
        function selectedVenueChanged() {
            callback.PerformCallback();
        }

        function callbackComplete(s, { result: imageHtml }) {
            document.getElementById('PageContent_venueImage').outerHTML = imageHtml;
        }
    </script>
</asp:Content>


<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" TypeName="EventsDB.Venue" runat="server"></dx:XpoDataSource>

    <dx:ASPxValidationSummary ID="validationSummary" runat="server">
    </dx:ASPxValidationSummary>

    <dx:ASPxLabel runat="server" Text="Contact Name" AssociatedControlID="nameEdit">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="nameEdit" runat="server" Width="250px">
        <ValidationSettings>
            <RequiredField ErrorText="The Contact Name is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>

    <dx:ASPxLabel runat="server" Text="Contact Email" AssociatedControlID="emailEdit">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="emailEdit" runat="server" Width="250px">
        <ValidationSettings>
            <RegularExpression ErrorText="Please enter a valid email address"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            <RequiredField ErrorText="The Contact Email is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>

    <dx:ASPxLabel runat="server" Text="Event Name" AssociatedControlID="eventNameEdit">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="eventNameEdit" runat="server" Width="250px">
        <ValidationSettings>
            <RequiredField ErrorText="The Event Name is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxTextBox>

    <dx:ASPxLabel runat="server" Text="Description and Comments" AssociatedControlID="eventDescriptionEdit">
    </dx:ASPxLabel>
    <dx:ASPxMemo ID="eventDescriptionEdit" runat="server" Height="80px" Width="250px">
    </dx:ASPxMemo>

    <dx:ASPxLabel runat="server" Text="Start Date" AssociatedControlID="dateFromEdit">
    </dx:ASPxLabel>
    <dx:ASPxDateEdit ID="dateFromEdit" runat="server" Width="250px">
        <ValidationSettings>
            <RequiredField ErrorText="The Start Date is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxDateEdit>

    <dx:ASPxLabel runat="server" Text="End Date" AssociatedControlID="dateToEdit"></dx:ASPxLabel>
    <dx:ASPxDateEdit ID="dateToEdit" runat="server" Width="250px">
        <ValidationSettings>
            <RequiredField ErrorText="The End Date is required" IsRequired="True" />
        </ValidationSettings>
    </dx:ASPxDateEdit>

    <div class="demo-venue-selection-container">
        <div class="demo-venue-combo">
            <dx:ASPxLabel runat="server" Text="Venue" AssociatedControlID="venueCombo"></dx:ASPxLabel>
            <dx:ASPxComboBox ID="venueCombo" runat="server" Width="250px"
                DataSourceID="venueSource" TextField="Name" ValueField="Oid">
                <ValidationSettings ErrorTextPosition="Bottom">
                    <RequiredField ErrorText="The Venue is required" IsRequired="True" />
                </ValidationSettings>
                <ClientSideEvents SelectedIndexChanged="selectedVenueChanged" />
            </dx:ASPxComboBox>
        </div>
        <div class="demo-venue-image">
            <dx:ASPxLabel runat="server" Text="Venue Image" AssociatedControlID="venueImage">
            </dx:ASPxLabel>
            <dx:ASPxBinaryImage ID="venueImage" runat="server" Width="250px" Height="250px"
                ImageSizeMode="FitProportional">
            </dx:ASPxBinaryImage>
        </div>
    </div>

    <dx:ASPxButton ID="submitButton" runat="server" Text="Submit Event Request" OnClick="submitButton_Click">
    </dx:ASPxButton>

    <dx:ASPxCallback ID="callback" runat="server" ClientInstanceName="callback" OnCallback="callback_Callback">
        <ClientSideEvents CallbackComplete="callbackComplete" />
    </dx:ASPxCallback>
</asp:Content>
