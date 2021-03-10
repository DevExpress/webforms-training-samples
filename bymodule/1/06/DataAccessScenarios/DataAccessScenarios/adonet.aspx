<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adonet.aspx.cs" Inherits="DataAccessScenarios.AdoNetPage"
    MasterPageFile="~/DataAccess.Master" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:AdoNetConnectionString %>"
        ProviderName="<%$ ConnectionStrings:AdoNetConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Countries]">
    </asp:SqlDataSource>

    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server"
        DataSourceID="SqlDataSource1" KeyFieldName="Id" EnableRowsCache="False">
        <SettingsPager PageSize="10">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True"
            ShowHeaderFilterButton="True" />
        <SettingsResizing ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
</asp:Content>
