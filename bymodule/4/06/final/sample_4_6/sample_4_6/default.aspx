<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_4_6._default" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script>
        function focusedRowChanged() {
            detailGrid.PerformCallback();
        }
    </script>
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

                <ClientSideEvents FocusedRowChanged="focusedRowChanged" />
            </dx:ASPxGridView>

            <dx:ASPxGridView ID="detailGrid" runat="server" ClientInstanceName="detailGrid">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="Model" VisibleIndex="0"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Price" VisibleIndex="1"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="HP" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Liter" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Cyl" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Category" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataBinaryImageColumn FieldName="ImageBytes" VisibleIndex="8"></dx:GridViewDataBinaryImageColumn>
                    <dx:GridViewDataHyperLinkColumn FieldName="Hyperlink" VisibleIndex="7"></dx:GridViewDataHyperLinkColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
