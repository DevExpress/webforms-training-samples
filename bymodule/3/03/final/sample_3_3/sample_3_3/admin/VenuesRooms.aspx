<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="VenuesRooms.aspx.cs"
    Inherits="sample_3_3.VenuesRooms" %>

<%@ Register Assembly="DevExpress.Xpo.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="venueSource" runat="server" TypeName="EventsDB.Venue"></dx:XpoDataSource>
    <dx:XpoDataSource ID="roomSource" runat="server" TypeName="EventsDB.Room"></dx:XpoDataSource>
    <dx:XpoDataSource ID="capacitySource" runat="server" TypeName="EventsDB.RoomCapacity">
    </dx:XpoDataSource>

    <dx:ASPxGridView ID="venueGrid" runat="server" AutoGenerateColumns="False" DataSourceID="venueSource"
        KeyFieldName="Oid">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
        </Columns>
        <SettingsDetail ShowDetailRow="true" />

        <Templates>
            <DetailRow>
                <dx:ASPxGridView ID="roomGrid" runat="server" AutoGenerateColumns="False" DataSourceID="roomSource"
                    KeyFieldName="Oid" OnBeforePerformDataSelect="roomGrid_BeforePerformDataSelect">
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
                                KeyFieldName="Oid" OnBeforePerformDataSelect="capacityGrid_BeforePerformDataSelect">
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
                            </dx:ASPxGridView>
                        </DetailRow>
                    </Templates>
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>
    </dx:ASPxGridView>
</asp:Content>
