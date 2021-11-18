<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="VenuesRooms.aspx.cs"
    Inherits="sample_3_5.VenuesRooms" %>

<%@ Register Assembly="DevExpress.Xpo.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>
    <dx:XpoDataSource ID="roomSource" runat="server" TypeName="EventsDB.Room"></dx:XpoDataSource>
    <dx:XpoDataSource ID="capacitySource" runat="server" TypeName="EventsDB.RoomCapacity">
    </dx:XpoDataSource>

    <dx:ASPxGridView ID="venueGrid" runat="server" AutoGenerateColumns="False" DataSourceID="venueSource"
        KeyFieldName="Oid" OnRowInserted="venueGrid_RowInserted" OnRowUpdated="venueGrid_RowUpdated"
        OnRowDeleted="venueGrid_RowDeleted">
        <Columns>
            <%--            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowNewButtonInHeader="True"
                ShowDeleteButton="True"></dx:GridViewCommandColumn>--%>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
        </Columns>
        <SettingsDetail ShowDetailRow="true" />

        <Templates>
            <DetailRow>
                <dx:ASPxGridView ID="roomGrid" runat="server" AutoGenerateColumns="False" DataSourceID="roomSource"
                    KeyFieldName="Oid" OnBeforePerformDataSelect="roomGrid_BeforePerformDataSelect"
                    OnRowInserted="roomGrid_RowInserted" OnRowUpdated="roomGrid_RowUpdated"
                    OnRowDeleted="roomGrid_RowDeleted" OnRowInserting="roomGrid_RowInserting">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Venue!Key" Caption="Venue ID" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsDetail ShowDetailRow="true" />
                    <Templates>
                        <DetailRow>
                            <dx:ASPxGridView ID="capacityGrid" runat="server" AutoGenerateColumns="False" DataSourceID="capacitySource"
                                KeyFieldName="Oid" OnBeforePerformDataSelect="capacityGrid_BeforePerformDataSelect"
                                OnRowInserted="capacityGrid_RowInserted" OnRowUpdated="capacityGrid_RowUpdated"
                                OnRowDeleted="capacityGrid_RowDeleted" OnRowInserting="capacityGrid_RowInserting">
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Capacity" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Room!Key" Caption="Room ID" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
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
                                <SettingsEditing Mode="Batch" />
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
                    <SettingsEditing Mode="Batch" />
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>
        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Oid" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Name" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
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

        <SettingsEditing Mode="Batch" />
    </dx:ASPxGridView>
</asp:Content>
