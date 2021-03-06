<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xpoServerMode.aspx.cs" Inherits="DataAccessScenarios.XpoServerModePage"
    MasterPageFile="~/DataAccess.Master" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dxxpo:XpoDataSource ID="XpoDataSource1" runat="server"
        TypeName="Countries.Country" ServerMode="True">
    </dxxpo:XpoDataSource>

    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server"
        DataSourceID="XpoDataSource1" KeyFieldName="Id" EnableRowsCache="False">
        <SettingsPager PageSize="10" NumericButtonCount="20">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True"
            ShowHeaderFilterButton="True" />
        <SettingsResizing ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
</asp:Content>
