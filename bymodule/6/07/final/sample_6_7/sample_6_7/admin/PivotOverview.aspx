<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="PivotOverview.aspx.cs"
    Inherits="sample_6_7.PivotOverview" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        .demo-flex-container {
            display: flex;
            flex-direction: column;
            height: 80vh;
            overflow: hidden;
        }

        .demo-flex-row {
            display: flex;
            flex-direction: row;
        }

        .demo-flex-cell-50 {
            flex: 1 1 50%;
            overflow: hidden;
        }

        .demo-flex-cell-70 {
            flex: 1 1 70%;
            overflow: hidden;
        }

        .demo-flex-cell-30 {
            flex: 1 1 30%;
            overflow: hidden;
        }
    </style>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="roomBookingSource" runat="server" TypeName="EventsDB.RoomBooking">
    </dx:XpoDataSource>

    <div class="demo-flex-container">
        <div class="demo-flex-row demo-flex-cell-70">
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" DataSourceID="roomBookingSource">
                <Fields>
                    <dx:PivotGridField ID="field1" Area="FilterArea" AreaIndex="0" Caption="CapReq"
                        DisplayFolder="CapacityRequirement" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Name"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field2" Area="DataArea" AreaIndex="0" Caption="Capacity (Sum)"
                        DisplayFolder="CapacityRequirement" SummaryType="Sum">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Capacity"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                        <CellFormat FormatString="n2" FormatType="Numeric" />
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field3" Area="DataArea" AreaIndex="1" Caption="Capacity (Avg)"
                        DisplayFolder="CapacityRequirement" SummaryType="Average">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Capacity"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                        <CellFormat FormatString="n2" FormatType="Numeric" />
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field4" Area="RowArea" AreaIndex="1" Caption="Room Setup"
                        DisplayFolder="CapacityRequirement" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.RoomSetup"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field5" Area="ColumnArea" AreaIndex="0" Caption="Event"
                        DisplayFolder="CapacityRequirement\Event" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.Name"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>

                    <dx:PivotGridField ID="field6" Area="FilterArea" AreaIndex="1" Caption="Event Start"
                        DisplayFolder="CapacityRequirement\Event" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.StartDate"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field13" Area="FilterArea" AreaIndex="7" Caption="Event Start Month"
                        DisplayFolder="CapacityRequirement\Event" SummaryType="Count" GroupIndex="0"
                        InnerGroupIndex="1">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.StartDate"
                                GroupInterval="DateMonth"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field14" Area="FilterArea" AreaIndex="8" Caption="Event Start Year"
                        DisplayFolder="CapacityRequirement\Event" SummaryType="Count" GroupIndex="0"
                        InnerGroupIndex="0" ExpandedInFieldsGroup="False">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.StartDate"
                                GroupInterval="DateYear"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>

                    <dx:PivotGridField ID="field7" Area="FilterArea" AreaIndex="2" Caption="Event End"
                        DisplayFolder="CapacityRequirement\Event" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.EndDate"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field8" Area="RowArea" AreaIndex="0" Caption="Venue"
                        DisplayFolder="CapacityRequirement\Event\Venue" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.Venue.Name"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field9" Area="FilterArea" AreaIndex="3" Caption="Customer"
                        DisplayFolder="CapacityRequirement\Event\Customer" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.Event.Customer.Name">
                            </dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field10" Area="FilterArea" AreaIndex="4" Caption="Room"
                        DisplayFolder="Room" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CapacityRequirement.RoomBooking.Room.Name">
                            </dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field11" Area="FilterArea" AreaIndex="5" Caption="Room Booking Start Time"
                        DisplayFolder="" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="StartTime"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="field12" Area="FilterArea" AreaIndex="6" Caption="Room Booking End Time"
                        DisplayFolder="" SummaryType="Count">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="EndTime"></dx:DataSourceColumnBinding>
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                </Fields>

                <OptionsData DataProcessingEngine="Optimized" />
                <OptionsCustomization CustomizationFormStyle="Excel2007" />

                <Groups>
                    <dx:PivotGridWebGroup Caption="Event Start" />
                </Groups>

                <ClientSideEvents AfterCallback="function() { chartPanel.PerformCallback(); }" />
            </dx:ASPxPivotGrid>
        </div>
        <div class="demo-flex-row demo-flex-cell-30">
            <dx:ASPxCallbackPanel ID="chartPanel" runat="server" ClientInstanceName="chartPanel"
                Height="100%" Width="100%">
                <PanelCollection>
                    <dx:PanelContent>
                        <dx:BootstrapChart ID="BootstrapChart1" runat="server" DataSourceID="ASPxPivotGrid1"
                            Height="100%" Width="100%">
                            <SettingsSeriesTemplate NameField="Series" />
                            <SettingsCommonSeries ArgumentField="Arguments" ValueField="Values" Type="Bar" />
                        </dx:BootstrapChart>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxCallbackPanel>
        </div>
    </div>
</asp:Content>
