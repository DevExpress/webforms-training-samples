<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="VenuesRooms.aspx.cs"
    Inherits="sample_3_10.VenuesRooms" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="Head" runat="server">
    <script>
        function fileUploadComplete() {
            callbackPanel.PerformCallback();
        }
    </script>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>
    <dx:XpoDataSource ID="roomSource" runat="server" TypeName="EventsDB.Room"></dx:XpoDataSource>
    <dx:XpoDataSource ID="capacitySource" runat="server" TypeName="EventsDB.RoomCapacity">
    </dx:XpoDataSource>

    <dx:ASPxGridView ID="venueGrid" runat="server" AutoGenerateColumns="False" DataSourceID="venueSource"
        KeyFieldName="Oid" OnRowInserted="venueGrid_RowInserted" OnRowUpdated="venueGrid_RowUpdated"
        OnRowDeleted="venueGrid_RowDeleted" OnRowValidating="venueGrid_RowValidating"
        OnRowUpdating="venueGrid_RowUpdating" OnRowInserting="venueGrid_RowInserting">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataBinaryImageColumn FieldName="PhotoBytes" Caption="Image" VisibleIndex="2">
                <PropertiesBinaryImage ImageHeight="100" ImageWidth="100" ImageSizeMode="FitProportional">
                </PropertiesBinaryImage>
                <EditItemTemplate>
                    <dx:ASPxCallbackPanel ID="callbackPanel" runat="server" Width="200px" ClientInstanceName="callbackPanel"
                        OnCallback="callbackPanel_Callback">
                        <PanelCollection>
                            <dx:PanelContent runat="server">
                                <dx:ASPxBinaryImage runat="server" ID="previewImage" ImageSizeMode="FitProportional"
                                    Height="250" Width="250">
                                </dx:ASPxBinaryImage>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>
                    <dx:ASPxUploadControl ID="uploadControl" runat="server" UploadMode="Auto" Width="280px"
                        ShowUploadButton="True" OnFileUploadComplete="uploadControl_FileUploadComplete">
                        <ValidationSettings AllowedFileExtensions=".jpg,.jpeg,.png" />
                        <ClientSideEvents FileUploadComplete="fileUploadComplete" />
                    </dx:ASPxUploadControl>
                </EditItemTemplate>
            </dx:GridViewDataBinaryImageColumn>
        </Columns>
        <SettingsDetail ShowDetailRow="true" />

        <Templates>
            <DetailRow>
                <dx:ASPxGridView ID="roomGrid" runat="server" AutoGenerateColumns="False" DataSourceID="roomSource"
                    KeyFieldName="Oid" OnBeforePerformDataSelect="roomGrid_BeforePerformDataSelect"
                    OnRowInserted="roomGrid_RowInserted" OnRowUpdated="roomGrid_RowUpdated"
                    OnRowDeleted="roomGrid_RowDeleted" OnRowInserting="roomGrid_RowInserting" OnRowValidating="roomGrid_RowValidating">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsDetail ShowDetailRow="true" />
                    <Templates>
                        <DetailRow>
                            <dx:ASPxGridView ID="capacityGrid" runat="server" AutoGenerateColumns="False" DataSourceID="capacitySource"
                                KeyFieldName="Oid" OnBeforePerformDataSelect="capacityGrid_BeforePerformDataSelect"
                                OnRowInserted="capacityGrid_RowInserted" OnRowUpdated="capacityGrid_RowUpdated"
                                OnRowDeleted="capacityGrid_RowDeleted" OnRowInserting="capacityGrid_RowInserting"
                                OnRowValidating="capacityGrid_RowValidating" OnCellEditorInitialize="capacityGrid_CellEditorInitialize">
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="Capacity" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="Setup" VisibleIndex="2" Name="roomSetupColumn">
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <Settings ShowFooter="True" />
                                <TotalSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total: {0}" FieldName="Capacity"
                                        ShowInColumn="Capacity" ShowInGroupFooterColumn="Capacity"
                                        SummaryType="Sum" />
                                </TotalSummary>
                                <Toolbars>
                                    <dx:GridViewToolbar>
                                        <Items>
                                            <dx:GridViewToolbarItem Command="New"></dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Command="Edit"></dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Command="Delete"></dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem BeginGroup="True" Command="ShowCustomizationDialog"></dx:GridViewToolbarItem>
                                        </Items>
                                    </dx:GridViewToolbar>
                                </Toolbars>
                                <SettingsCustomizationDialog Enabled="True" />
                                <SettingsBehavior AllowFocusedRow="True" />
                                <StylesToolbar>
                                    <Style Paddings-Padding="2px" />
                                </StylesToolbar>
                                <SettingsEditing Mode="EditFormAndDisplayRow" />
                            </dx:ASPxGridView>
                        </DetailRow>
                    </Templates>
                    <Toolbars>
                        <dx:GridViewToolbar>
                            <Items>
                                <dx:GridViewToolbarItem Command="New"></dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Command="Edit"></dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Command="Delete"></dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem BeginGroup="True" Command="ShowCustomizationDialog"></dx:GridViewToolbarItem>
                            </Items>
                        </dx:GridViewToolbar>
                    </Toolbars>
                    <SettingsCustomizationDialog Enabled="True" />
                    <SettingsBehavior AllowFocusedRow="True" />
                    <StylesToolbar>
                        <Style Paddings-Padding="2px" />
                    </StylesToolbar>
                    <SettingsEditing Mode="EditFormAndDisplayRow" />
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>

        <Toolbars>
            <dx:GridViewToolbar>
                <Items>
                    <dx:GridViewToolbarItem Command="New"></dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit"></dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Delete"></dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="ShowCustomizationDialog"></dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <SettingsCustomizationDialog Enabled="True" />
        <SettingsBehavior AllowFocusedRow="True" />

        <SettingsEditing Mode="EditFormAndDisplayRow" />
    </dx:ASPxGridView>
</asp:Content>
