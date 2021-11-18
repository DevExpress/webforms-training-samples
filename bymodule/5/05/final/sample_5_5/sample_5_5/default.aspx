<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_5._default" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function richEditSelectionChanged() {
            const visibility = !richEdit.selection.collapsed;
            ribbon.SetContextTabCategoryVisible('selectionCategory', visibility);
            if (visibility)
                ribbon.SetActiveTab(ribbon.GetTabByName('selectionTab'));
        }

        function insertLoremIpsum() {
            richEdit.commands.insertText.execute(getLorem());
        }

        function makeSelectionBold() {
            richEdit.commands.changeFontFormatting.execute({ bold: true });
        }

        const commandHandlers = {
            insertLoremButton: insertLoremIpsum,
            boldButton: makeSelectionBold,
        };

        function ribbonCommand(s, e) {
            commandHandlers[e.item.name]();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxRibbon ID="ribbon" runat="server" ClientInstanceName="ribbon">
            <ClientSideEvents CommandExecuted="ribbonCommand" />
            <Tabs>
                <dx:RibbonTab Text="Edit">
                    <Groups>
                        <dx:RibbonGroup Text="Edit" Image-Url="/Content/images/edit.svg">
                            <Items>
                                <dx:RibbonButtonItem Text="Cut" Name="cutButton" LargeImage-Url="/Content/images/cut.svg"
                                    Size="Large">
                                </dx:RibbonButtonItem>
                                <dx:RibbonButtonItem Text="Copy" Name="copyButton" LargeImage-Url="/Content/images/copy.svg"
                                    Size="Large">
                                </dx:RibbonButtonItem>
                                <dx:RibbonButtonItem Text="Paste" Name="pasteButton" LargeImage-Url="/Content/images/paste.svg"
                                    Size="Large">
                                </dx:RibbonButtonItem>
                            </Items>
                        </dx:RibbonGroup>
                        <dx:RibbonGroup Text="Document Operations" Image-Url="/Content/images/DocumentProperties.svg">
                            <Items>
                                <dx:RibbonButtonItem Text="Insert Lorem Ipsum" Name="insertLoremButton" LargeImage-Url="/Content/images/lorem.svg"
                                    Size="Large">
                                </dx:RibbonButtonItem>
                                <dx:RibbonGalleryBarItem Text="Insert Standard Block" MinColumnCount="1" MaxColumnCount="3">
                                    <PropertiesDropDownGallery RowCount="3" MinColumnCount="3" />
                                    <Groups>
                                        <dx:RibbonGalleryGroup Text="Blocks">
                                            <Items>
                                                <dx:RibbonGalleryItem Text="Header" Image-Url="/Content/images/Header.svg"></dx:RibbonGalleryItem>
                                                <dx:RibbonGalleryItem Text="Footer" Image-Url="/Content/images/Footer.svg"></dx:RibbonGalleryItem>
                                                <dx:RibbonGalleryItem Text="Greeting" Image-Url="/Content/images/greeting.svg"></dx:RibbonGalleryItem>
                                                <dx:RibbonGalleryItem Text="Address" Image-Url="/Content/images/address.svg"></dx:RibbonGalleryItem>
                                                <dx:RibbonGalleryItem Text="Email" Image-Url="/Content/images/email.svg"></dx:RibbonGalleryItem>
                                                <dx:RibbonGalleryItem Text="Phone Number" Image-Url="/Content/images/phone.svg">
                                                </dx:RibbonGalleryItem>
                                            </Items>
                                        </dx:RibbonGalleryGroup>
                                    </Groups>
                                </dx:RibbonGalleryBarItem>
                            </Items>
                        </dx:RibbonGroup>
                    </Groups>
                </dx:RibbonTab>
                <dx:RibbonTab Text="Second Tab">
                    <Groups>
                        <dx:RibbonGroup Text="Placeholder" Name="Placeholder"></dx:RibbonGroup>
                    </Groups>
                </dx:RibbonTab>
            </Tabs>
            <ContextTabCategories>
                <dx:RibbonContextTabCategory Name="selectionCategory" Color="MediumBlue" ClientVisible="False">
                    <Tabs>
                        <dx:RibbonTab Text="Selection" Name="selectionTab">
                            <Groups>
                                <dx:RibbonGroup Text="Selection" Image-Url="/Content/images/edit.svg">
                                    <Items>
                                        <dx:RibbonButtonItem Text="Bold" Name="boldButton" LargeImage-Url="/Content/images/bold.svg"
                                            Size="Large">
                                        </dx:RibbonButtonItem>
                                    </Items>
                                </dx:RibbonGroup>
                            </Groups>
                        </dx:RibbonTab>
                    </Tabs>
                </dx:RibbonContextTabCategory>
            </ContextTabCategories>
        </dx:ASPxRibbon>

        <dx:ASPxRichEdit ID="richEdit" ClientInstanceName="richEdit" runat="server" RibbonMode="None">
            <ClientSideEvents SelectionChanged="richEditSelectionChanged" />
        </dx:ASPxRichEdit>
    </form>
    <script type="text/javascript" src="/Content/site.js"></script>
</body>
</html>
