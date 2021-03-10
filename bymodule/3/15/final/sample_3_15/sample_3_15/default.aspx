<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_3_15.Default" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
</head>
<body>
    <form id="form1" runat="server">
        <ef:EntityDataSource ID="EntityDataSource1" runat="server"
            OnContextCreating="EntityDataSource1_ContextCreating"
            EntitySetName="Countries" Include="SubRegion.Region">
        </ef:EntityDataSource>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server"
            DataSourceID="EntityDataSource1" KeyFieldName="Id" EnableRowsCache="False" AutoGenerateColumns="False"
            Width="100%">
            <SettingsBehavior EnableCustomizationWindow="True" AllowFocusedRow="True" />
            <SettingsContextMenu Enabled="True" />
            <SettingsCustomizationDialog Enabled="True" />
            <SettingsFilterControl AllowHierarchicalColumns="True" AllowNonVisualFilterExpression="True"
                ShowOperandTypeButton="True" />
            <SettingsSearchPanel Visible="True" />
            <SettingsPager PageSize="8" />
            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True"
                ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" ShowFooter="True"
                ShowFilterBar="Auto" />

            <SettingsPopup>
                <CustomizationDialog>
                    <SettingsAdaptivity />
                </CustomizationDialog>
                <EditForm>
                    <SettingsAdaptivity />
                </EditForm>
                <FilterControl>
                    <SettingsAdaptivity />
                </FilterControl>
                <HeaderFilter>
                    <SettingsAdaptivity />
                </HeaderFilter>
            </SettingsPopup>

            <SettingsEditing EditFormColumnCount=3 />

            <EditFormLayoutProperties>
                <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="750">
                    <GridSettings>
                        <Breakpoints></Breakpoints>
                    </GridSettings>
                </SettingsAdaptivity>
            </EditFormLayoutProperties>

            <SettingsAdaptivity AdaptivityMode="HideDataCells">
                <AdaptiveDetailLayoutProperties>
                    <SettingsAdaptivity />
                    <SettingsItemCaptions />
                    <SettingsItems />
                </AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>

            <Columns>
                <dxwgv:GridViewDataBinaryImageColumn FieldName="FlagImage" PropertiesBinaryImage-ImageHeight="25px"
                    VisibleIndex="1" />
                <dxwgv:GridViewDataTextColumn FieldName="SubRegion.Region.Name" Caption="Region"
                    VisibleIndex="2" />
                <dxwgv:GridViewDataTextColumn FieldName="SubRegion.Name" Caption="SubRegion" VisibleIndex="3" />
                <dxwgv:GridViewDataTextColumn FieldName="Code" VisibleIndex="4" />
                <dxwgv:GridViewDataTextColumn FieldName="ShortName" VisibleIndex="5" />
                <dxwgv:GridViewDataTextColumn FieldName="Currency" VisibleIndex="6" />
                <dxwgv:GridViewDataTextColumn FieldName="Capital" VisibleIndex="7" />
                <dxwgv:GridViewDataTextColumn FieldName="Area" VisibleIndex="8" />
                <dxwgv:GridViewDataTextColumn FieldName="GDP" VisibleIndex="9" />
                <dxwgv:GridViewDataTextColumn FieldName="Population" VisibleIndex="10" />
            </Columns>
            <Toolbars>
                <dxwgv:GridViewToolbar>
                    <SettingsAdaptivity />
                    <Items>
                        <dxwgv:GridViewToolbarItem Command="New"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="Edit"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="Delete"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="Update" BeginGroup="True"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="Cancel"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="ClearFilter" BeginGroup="True"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="ClearSorting"></dxwgv:GridViewToolbarItem>
                        <dxwgv:GridViewToolbarItem Command="Refresh" BeginGroup="True"></dxwgv:GridViewToolbarItem>
                    </Items>
                </dxwgv:GridViewToolbar>
            </Toolbars>
        </dxwgv:ASPxGridView>
    </form>
</body>
</html>
