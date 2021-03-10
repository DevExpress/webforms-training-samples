<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs"
    Inherits="sample_5_13.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>FAB</title>
    <script>
        function timestamp() {
            const date = new Date();
            const format = new Intl.DateTimeFormat('en', { hour: 'numeric', minute: 'numeric', second: 'numeric' });
            return format.format(date);
        }

        let jobRunning = false;

        function updateButtons() {
            startButton.SetEnabled(!jobRunning);
            endButton.SetEnabled(jobRunning);
            updateFab();
        }

        function startJob() {
            if (!jobRunning) {
                logList.AddItem(`(${timestamp()}) Job started: ${jobEdit.GetText()}`);
                jobRunning = true;
            }
            updateButtons();
        }

        function endJob() {
            if (jobRunning) {
                logList.AddItem(`(${timestamp()}) Job ended`);
                jobRunning = false;
            }
            updateButtons();
        }

        function updateFab() {
            if (jobRunning) fab.SetActionContext('runningJob');
            else fab.SetActionContext('noRunningJob');
        }

        function listSelectionChanged(s, e) {
            if (e.isSelected) fab.SetActionContext('logItemSelected');
        }

        function listDeselect() {
            logList.UnselectAll();
            updateFab();
        }

        function startSubJob() {
            if (jobRunning)
                logList.AddItem(`(${timestamp()})     Sub-Job started: ${jobEdit.GetText()}`);
        }

        function deleteLogEntry() {
            const index = logList.GetSelectedIndex();
            if (index !== -1) logList.RemoveItem(index);
            listDeselect();
        }

        const actionHandlers = {
            startJobAction: startJob,
            endJobAction: endJob,
            subJobAction: startSubJob,
            deleteLogEntryAction: deleteLogEntry
        };

        function fabItemClick(s, e) {
            actionHandlers[e.actionName]();
        }

        window.onload = updateButtons;
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; align-items: center; gap: 10px;">
            <dx:ASPxTextBox ID="jobEdit" ClientInstanceName="jobEdit" runat="server" Text="Work on ASP.NET Sample"
                Width="250px">
            </dx:ASPxTextBox>
            <dx:ASPxButton ID="startButton" ClientInstanceName="startButton" runat="server" Text="Start Job"
                UseSubmitBehavior="false"
                ClientSideEvents-Click="startJob" AutoPostBack="False">
            </dx:ASPxButton>
            <dx:ASPxButton ID="endButton" ClientInstanceName="endButton" runat="server" Text="End Job"
                UseSubmitBehavior="false"
                ClientSideEvents-Click="endJob" AutoPostBack="False">
            </dx:ASPxButton>
        </div>
        <div style="margin-top: 20px;">
            <dx:ASPxLabel ID="header" runat="server" Text="Activity Log" Font-Size="Large" Font-Bold="True" />
            <dx:ASPxListBox ID="logList" ClientInstanceName="logList" runat="server" TextField="Text"
                Width="500px"
                Height="500px" Rows="20">
                <ClientSideEvents SelectedIndexChanged="listSelectionChanged" LostFocus="listDeselect" />
            </dx:ASPxListBox>
        </div>

        <dx:ASPxFloatingActionButton ID="fab" ClientInstanceName="fab" runat="server" ContainerElementID="logList"
            InitialActionContext="noRunningJob">
            <Items>
                <dx:FABAction ActionName="startJobAction" Text="Start Job" ContextName="noRunningJob">
                    <Image Url="~/Content/images/start.svg" Width="24px" Height="24px" />
                </dx:FABAction>
                <dx:FABActionGroup ContextName="runningJob">
                    <ExpandImage Url="~/Content/images/running.svg" Width="24px" Height="24px" />
                    <Items>
                        <dx:FABActionItem ActionName="endJobAction" Text="End Job">
                            <Image Url="~/Content/images/stop.svg" Width="24px" Height="24px" />
                        </dx:FABActionItem>
                        <dx:FABActionItem ActionName="subJobAction" Text="Start Sub-Job">
                            <Image Url="~/Content/images/subjob.svg" Width="24px" Height="24px" />
                        </dx:FABActionItem>
                    </Items>
                </dx:FABActionGroup>
                <dx:FABAction ActionName="deleteLogEntryAction" Text="Delete Log Entry" ContextName="logItemSelected">
                    <Image Url="~/Content/images/delete.svg" Width="24px" Height="24px" />
                </dx:FABAction>
            </Items>
            <ClientSideEvents ActionItemClick="fabItemClick" />
        </dx:ASPxFloatingActionButton>
    </form>
</body>
</html>
