<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_13.WebForm1" %>

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

        window.onload = updateButtons;
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; align-items: center; gap: 10px;">
            <dx:ASPxTextBox ID="jobEdit" ClientInstanceName="jobEdit" runat="server" Text="Work on ASP.NET Sample"
                Width="250px">
            </dx:ASPxTextBox>
            <dx:ASPxButton ID="startButton" ClientInstanceName="startButton" runat="server" Text="Start Job" UseSubmitBehavior="false"
                ClientSideEvents-Click="startJob" AutoPostBack="False">
            </dx:ASPxButton>
            <dx:ASPxButton ID="endButton" ClientInstanceName="endButton" runat="server" Text="End Job" UseSubmitBehavior="false"
                ClientSideEvents-Click="endJob" AutoPostBack="False">
            </dx:ASPxButton>
        </div>
        <div style="margin-top: 20px;">
            <dx:ASPxLabel ID="header" runat="server" Text="Activity Log" Font-Size="Large" Font-Bold="True" />
            <dx:ASPxListBox ID="logList" ClientInstanceName="logList" runat="server" TextField="Text" Width="500px"
                Height="500px" Rows="20">
            </dx:ASPxListBox>
        </div>
    </form>
</body>
</html>
