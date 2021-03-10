<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_9._default" %>

<%@ Register Src="~/InputForm.ascx" TagName="InputForm" TagPrefix="demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main > div {
            width: 400px;
            border: 1px solid grey;
            border-radius: 8px;
            margin-bottom: 20px;
            padding: 20px;
        }
    </style>
    <script>
        function showPopupForm() {
            formPopup.Show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div id="information" style="text-decoration: underline;">
                Click here for more information
            </div>

            <div>
                <dx:ASPxButton runat="server" AutoPostBack="False" Text="Show popup form" ClientSideEvents-Click="showPopupForm">
                </dx:ASPxButton>
            </div>
        </div>

        <dx:ASPxPopupControl ID="infoPopup" runat="server" PopupElementID="information" ShowHeader="False">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    This is the extra information displayed
                    on a mouse click.
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>

        <dx:ASPxPopupControl ID="formPopup" ClientInstanceName="formPopup" runat="server"
            HeaderText="Dive Log Entry"
            Modal="True" ShowCollapseButton="True" ShowMaximizeButton="True" Width="800"
            CloseAction="CloseButton"
            AllowDragging="True" AllowResize="True" ShowSizeGrip="True"
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" AutoUpdatePosition="True"
            ShowFooter="True">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <demo:InputForm runat="server" />
                </dx:PopupControlContentControl>
            </ContentCollection>
            <FooterContentTemplate>
                <div style="display: flex; justify-content: end; gap: 10px; margin: 10px;">
                    <dx:ASPxButton runat="server" AutoPostBack="False" Text="OK" />
                    <dx:ASPxButton runat="server" AutoPostBack="False" Text="Cancel" />
                </div>
            </FooterContentTemplate>
            <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="800" />
        </dx:ASPxPopupControl>
    </form>
</body>
</html>
