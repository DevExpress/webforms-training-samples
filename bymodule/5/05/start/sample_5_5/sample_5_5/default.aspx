<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_5._default" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/Content/site.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxRichEdit ID="richEdit" ClientInstanceName="richEdit" runat="server" RibbonMode="None">
        </dx:ASPxRichEdit>
    </form>
</body>
</html>
