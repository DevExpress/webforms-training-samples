<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entityframework.aspx.cs" Inherits="DataAccessScenarios.EntityFrameworkPage"
    MasterPageFile="~/DataAccess.Master" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ef:EntityDataSource ID="EntityDataSource1" runat="server"
        OnContextCreating="EntityDataSource1_ContextCreating"
        EntitySetName="Countries">
    </ef:EntityDataSource>

    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server"
        DataSourceID="EntityDataSource1" KeyFieldName="Id" EnableRowsCache="False">
        <SettingsPager PageSize="10" NumericButtonCount="20">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True"
            ShowHeaderFilterButton="True" />
        <SettingsResizing ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
</asp:Content>
