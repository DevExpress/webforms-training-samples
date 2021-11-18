<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true"
    CodeBehind="EventsList.aspx.cs"
    Inherits="sample_4_4.EventsList" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Xpo.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.XtraScheduler.v21.2.Core.Desktop, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>

<asp:Content ID="Content" ContentPlaceHolderID="PageContent" runat="server">
    <dx:XpoDataSource ID="eventSource" runat="server" TypeName="EventsDB.Event"></dx:XpoDataSource>

    <dx:ASPxGridView ID=eventsGrid runat="server" AutoGenerateColumns="False" DataSourceID="eventSource"
        KeyFieldName="Oid" Width="100%" EnableCallBacks="false" OnFocusedRowChanged="eventsGrid_FocusedRowChanged">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="StartDate" VisibleIndex="2"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="EndDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Venue.Name" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Customer.Name" VisibleIndex="5"></dx:GridViewDataTextColumn>
        </Columns>

        <SettingsBehavior AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="True" />
    </dx:ASPxGridView>

    <dxwschs:ASPxScheduler runat="server" ID="scheduler">
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
