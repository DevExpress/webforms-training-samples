<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs"
    Inherits="sample_2_5.HomePage" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>

    <%--    <dx:ASPxDataView ID=ASPxDataView1 runat="server" DataSourceID="venueSource">
        <ItemTemplate>
            <div style="display: flex; flex-direction: column; align-items: center; gap: 20px;">
                <dx:ASPxBinaryImage ID="image" runat="server" ContentBytes='<%# Eval("PhotoBytes") %>'
                    Height="200px">
                </dx:ASPxBinaryImage>
                <dx:ASPxLabel ID="nameLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Name")) %>'>
                </dx:ASPxLabel>
            </div>
        </ItemTemplate>

        <ItemStyle Border-BorderColor="#CCCCCC" Border-BorderStyle="Solid" Border-BorderWidth="2px"
            Font-Bold="True" />
    </dx:ASPxDataView>--%>

    <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="venueSource"
        ImageContentBytesField="PhotoBytes" TextField="Name" TextVisibility="Always"
        Layout="Breakpoints" Width="100%" ItemSpacing="30px">
        <SettingsFolder ImageCacheFolder="~\Thumb\" />

        <SettingsBreakpointsLayout ItemsPerRow="3" ItemsPerPage="6">
            <Breakpoints>
                <dx:ImageGalleryBreakpoint DeviceSize="Large" ItemsPerRow="2" />
                <dx:ImageGalleryBreakpoint DeviceSize="Small" ItemsPerRow="1" />
            </Breakpoints>
        </SettingsBreakpointsLayout>
    </dx:ASPxImageGallery>
</asp:Content>
