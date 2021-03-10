<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_4_6._default" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; gap: 10px;">

            <dx:ASPxGridView ID="trademarksGrid" runat="server" AutoGenerateColumns="False"
                KeyFieldName="Trademark">
                <SettingsBehavior AllowFocusedRow="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="Trademark" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

        </div>
    </form>
</body>
</html>
