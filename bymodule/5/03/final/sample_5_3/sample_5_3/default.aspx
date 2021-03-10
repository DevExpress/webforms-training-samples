<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_3._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="cell left">
                <dx:ASPxPanel ID="leftPanel" runat="server" Collapsible="True">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                            <div class="placeholder type1"></div>
                        </dx:PanelContent>
                    </PanelCollection>
                    <SettingsAdaptivity CollapseAtWindowInnerWidth="690" />
                    <SettingsCollapsing ExpandButton-GlyphType="Strips" ExpandEffect="PopupToRight" />
                    <ExpandedPanelTemplate>
                        <div class="placeholder type2"></div>
                    </ExpandedPanelTemplate>
                </dx:ASPxPanel>
            </div>
            <div class="cell content"></div>
            <div class="cell right">
                <dx:ASPxPanel ID="rightPanel" runat="server" Collapsible="True">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                            <div class="placeholder type2"></div>
                        </dx:PanelContent>
                    </PanelCollection>
                    <SettingsAdaptivity CollapseAtWindowInnerWidth="690" />
                    <SettingsCollapsing ExpandButton-Visible="False" />
                    <ExpandBarTemplate>
                        <div class="placeholder type-expandbar"><span>Replacement UI</span></div>
                    </ExpandBarTemplate>
                </dx:ASPxPanel>
            </div>
        </div>

        <dx:ASPxPanel ID="bottomPanel" runat="server" FixedPosition="WindowTop">
            <PanelCollection>
                <dx:PanelContent runat="server">
                    <div class="placeholder type-menu"></div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxPanel>
    </form>
</body>
</html>
