<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="EventsList.aspx.cs"
    Inherits="sample_4_4.EventsList" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Xpo.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <script>
        function focusedRowChanged() {
            scheduler.PerformCallback();
        }
    </script>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="eventSource" runat="server" TypeName="EventsDB.Event"></dx:XpoDataSource>

    <dx:ASPxButton ID="exportButton" runat="server" Text="Export" OnClick="exportButton_Click">
    </dx:ASPxButton>

    <dx:ASPxGridView ID="eventsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="eventSource"
        KeyFieldName="Oid" Width="100%" EnableCallBacks="True">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="StartDate" VisibleIndex="2"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="EndDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Venue.Name" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Customer.Name" VisibleIndex="5"></dx:GridViewDataTextColumn>
        </Columns>

        <SettingsBehavior AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="False" />

        <ClientSideEvents FocusedRowChanged="focusedRowChanged" />

        <Toolbars>
            <dx:GridViewToolbar>
                <Items>
                    <dx:GridViewToolbarItem Command="ExportToPdf"></dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="ExportToXlsx"></dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>

        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
    </dx:ASPxGridView>

    <dx:ASPxGridViewExporter ID="gridViewExporter" runat="server" GridViewID="eventsGrid">
    </dx:ASPxGridViewExporter>

    <dxwschs:ASPxScheduler runat="server" ID="scheduler" ClientInstanceName="scheduler">
        <Views>
            <AgendaView Enabled="False" />
            <FullWeekView Enabled="False" />
            <MonthView Enabled="False" />
            <TimelineView Enabled="False" />
            <WeekView Enabled="False" />
            <WorkWeekView Enabled="False" />

            <DayView Enabled="True" TimeScale="01:00:00">
                <AppointmentDisplayOptions ShowRecurrence="False" ShowReminder="False" SnapToCellsMode="Never" />
            </DayView>
        </Views>

        <Storage>
            <Appointments>
                <Mappings AppointmentId="Oid" End="EndTime" Start="StartTime" Subject="Name" />
            </Appointments>
        </Storage>

        <OptionsCustomization AllowAppointmentCopy="None" AllowAppointmentCreate="None"
            AllowAppointmentDelete="None" AllowAppointmentDrag="None"
            AllowAppointmentDragBetweenResources="None" AllowAppointmentEdit="None"
            AllowAppointmentResize="None" AllowDisplayAppointmentDependencyForm="Never"
            AllowDisplayAppointmentForm="Never" AllowInplaceEditor="None" />
        <OptionsBehavior ShowFloatingActionButton="false" />
        <OptionsToolTips ShowAppointmentToolTip="False" />
    </dxwschs:ASPxScheduler>
</asp:Content>
