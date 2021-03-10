<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_4_10._default" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script>
        function selectedIndexChanged() {
            carCombo.PerformCallback();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; flex-direction: row; gap: 10px;">

            <dx:ASPxComboBox ID="categoryCombo" runat="server">
                <ClientSideEvents SelectedIndexChanged="selectedIndexChanged" />
            </dx:ASPxComboBox>

            <dx:ASPxComboBox ID="carCombo" runat="server" ValueField="Id"
                TextField="CarInfo" ClientInstanceName="carCombo">
            </dx:ASPxComboBox>

        </div>
    </form>
</body>
</html>
