<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_15._default" %>

<%@ Register Src="~/TabPagePlaceholder.ascx" TagName="TabPagePlaceholder" TagPrefix="demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html, body, form {
            width: 100%;
            height: 100%;
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Height="100%"
            Width="100%" TabAlign="Center" TabPosition="Bottom" ActivateTabPageAction="Click"
            EnableTabScrolling="False">
            <TabPages>
                <dx:TabPage Text="First Tab">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <demo:TabPagePlaceholder runat="server" Name="First Page" Color="#e9ecff"></demo:TabPagePlaceholder>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Second Tab">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <demo:TabPagePlaceholder runat="server" Name="Second Page" Color="#feebff"></demo:TabPagePlaceholder>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="And a Third Tab" NewLine="True">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <demo:TabPagePlaceholder runat="server" Name="And a Third Page" Color="#ecffeb">
                            </demo:TabPagePlaceholder>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Tab Number 4">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <demo:TabPagePlaceholder runat="server" Name="Page Number 4" Color="#fff9eb"></demo:TabPagePlaceholder>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        </dx:ASPxPageControl>
    </form>
</body>
</html>
