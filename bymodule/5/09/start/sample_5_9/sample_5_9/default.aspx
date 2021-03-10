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
    </form>
</body>
</html>
