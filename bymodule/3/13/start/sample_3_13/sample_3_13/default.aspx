<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_3_13._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #controlFrame {
            display: flex;
            align-items: flex-end;
            margin: 1rem;
        }

        #button {
            margin-left: 1rem;
        }
    </style>

    <script>
        function splitValue() {
            const value = Number(totalBox.GetValue());
            if (value) {
                const batchApi = grid.batchEditApi;
                const rowIndices = batchApi.GetRowVisibleIndices(false);
                const split = Math.floor(value / rowIndices.length);

                for (const index of rowIndices) {
                    const currentValue = batchApi.GetCellValue(index, 'Portion', false);
                    const newValue = currentValue + split;
                    batchApi.SetCellValue(index, 'Portion', newValue);
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="controlFrame">
            <div>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Split value into portions">
                </dx:ASPxLabel>
                <dx:ASPxTextBox ID="totalBox" runat="server" Width="170px" ClientInstanceName="totalBox">
                </dx:ASPxTextBox>
            </div>
            <dx:ASPxButton ID="button" runat="server" AutoPostBack="False" Text="Split Value">
                <ClientSideEvents Click="splitValue" />
            </dx:ASPxButton>
        </div>

        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid"
            KeyFieldName="Id"
            Width="500px">
            <SettingsEditing Mode="Batch">
            </SettingsEditing>
            <Settings VerticalScrollableHeight="250" VerticalScrollBarMode="Auto" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True"
                    VisibleIndex="0" ShowInCustomizationForm="True">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1" ShowInCustomizationForm="True">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Portion" VisibleIndex="2" ShowInCustomizationForm="True">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </form>
</body>
</html>
