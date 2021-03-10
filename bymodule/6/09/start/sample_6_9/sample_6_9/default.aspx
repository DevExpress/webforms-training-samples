<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_6_9._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <style>
        html, body, form {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .flex-container {
            display: flex;
            flex-direction: column;
            height: 100vh;
            overflow: hidden;
        }

        .flex-row {
            display: flex;
            flex-direction: row;
        }

        .flex-cell-15 {
            flex: 1 1 15%;
            overflow: hidden;
        }

        .flex-cell-70 {
            flex: 1 1 70%;
            overflow: hidden;
        }

        .placeholder {
            background: #dddddd;
            display: flex;
            align-items: center;
            justify-content: center;
        }

            .placeholder::after {
                content: "Placeholder"
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="flex-container">
            <div class="flex-row flex-cell-15 placeholder"></div>

            <div class="flex-row flex-cell-70">
            </div>

            <div class="flex-row flex-cell-15 placeholder"></div>
        </div>
    </form>
</body>
</html>
