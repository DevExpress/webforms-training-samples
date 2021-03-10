<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_11._default" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:XpoDataSource ID="fileItemSource" runat="server" TypeName="sample_5_11.FileItem" OnInserted="XpoDataSource1_Inserted">
        </dx:XpoDataSource>
    </form>
</body>
</html>
