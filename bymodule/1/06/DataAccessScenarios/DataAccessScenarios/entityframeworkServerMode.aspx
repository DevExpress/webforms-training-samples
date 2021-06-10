<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entityframeworkServerMode.aspx.cs" Inherits="DataAccessScenarios.EntityFrameworkServerModePage"
    MasterPageFile="~/DataAccess.Master" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Data.Linq" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:EntityServerModeDataSource ID="EntityServerModeDataSource1" runat="server" TableName="Countries"
        ContextTypeName="CountriesDB.EF.CountriesDBContext"/>

    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server"
        DataSourceID="EntityServerModeDataSource1" KeyFieldName="Id" EnableRowsCache="False">
        <SettingsPager PageSize="10" NumericButtonCount="20">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True"
            ShowHeaderFilterButton="True" />
        <SettingsResizing ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
</asp:Content>
