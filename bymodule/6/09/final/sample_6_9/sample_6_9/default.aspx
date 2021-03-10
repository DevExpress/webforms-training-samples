<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_6_9._default" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpreadsheet.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpreadsheet" TagPrefix="dx" %>

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

    <script>
        function ribbonCustomCommand(s, e) {
            if (e.commandName === 'sampleDataButton') {
                spreadsheet.PerformCallback('sampleData');
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="flex-container">
            <div class="flex-row flex-cell-15 placeholder"></div>

            <div class="flex-row flex-cell-70">
                <dx:ASPxSpreadsheet ID="ASPxSpreadsheet1" runat="server" WorkDirectory="~/App_Data/WorkDirectory"
                    Height="100%" Width="100%" ClientInstanceName="spreadsheet" ClientSideEvents-CustomCommandExecuted="ribbonCustomCommand"
                    OnCallback="ASPxSpreadsheet1_Callback">
                    <RibbonTabs>
                        <dx:SRFileTab>
                            <Groups>
                                <dx:SRFileCommonGroup>
                                    <Items>
                                        <dx:SRFileNewCommand></dx:SRFileNewCommand>
                                        <dx:SRFileOpenCommand></dx:SRFileOpenCommand>
                                        <dx:SRFileSaveCommand></dx:SRFileSaveCommand>
                                        <dx:SRFileSaveAsCommand></dx:SRFileSaveAsCommand>
                                        <dx:SRFilePrintCommand></dx:SRFilePrintCommand>
                                    </Items>
                                </dx:SRFileCommonGroup>
                            </Groups>
                        </dx:SRFileTab>
                        <dx:SRHomeTab>
                            <Groups>
                                <dx:SRUndoGroup>
                                    <Items>
                                        <dx:SRFileUndoCommand></dx:SRFileUndoCommand>
                                        <dx:SRFileRedoCommand></dx:SRFileRedoCommand>
                                    </Items>
                                </dx:SRUndoGroup>
                                <dx:SRClipboardGroup>
                                    <Items>
                                        <dx:SRPasteSelectionCommand></dx:SRPasteSelectionCommand>
                                        <dx:SRCutSelectionCommand></dx:SRCutSelectionCommand>
                                        <dx:SRCopySelectionCommand></dx:SRCopySelectionCommand>
                                    </Items>
                                </dx:SRClipboardGroup>
                                <dx:SRFontGroup>
                                    <Items>
                                        <dx:SRFormatFontNameCommand>
                                            <PropertiesComboBox NullText="(Font Name)"></PropertiesComboBox>
                                        </dx:SRFormatFontNameCommand>
                                        <dx:SRFormatFontSizeCommand>
                                            <PropertiesComboBox DropDownStyle="DropDown" NullText="(Font Size)"></PropertiesComboBox>
                                        </dx:SRFormatFontSizeCommand>
                                        <dx:SRFormatIncreaseFontSizeCommand></dx:SRFormatIncreaseFontSizeCommand>
                                        <dx:SRFormatDecreaseFontSizeCommand></dx:SRFormatDecreaseFontSizeCommand>
                                        <dx:SRFormatFontBoldCommand></dx:SRFormatFontBoldCommand>
                                        <dx:SRFormatFontItalicCommand></dx:SRFormatFontItalicCommand>
                                        <dx:SRFormatFontUnderlineCommand></dx:SRFormatFontUnderlineCommand>
                                        <dx:SRFormatFontStrikeoutCommand></dx:SRFormatFontStrikeoutCommand>
                                        <dx:SRFormatBordersCommand></dx:SRFormatBordersCommand>
                                        <dx:SRFormatFillColorCommand EnableCustomColors="True" EnableAutomaticColorItem="True"
                                            AutomaticColorItemCaption="No Fill" AutomaticColor="" AutomaticColorItemValue="16777215">
                                        </dx:SRFormatFillColorCommand>
                                        <dx:SRFormatFontColorCommand EnableCustomColors="True" EnableAutomaticColorItem="True"
                                            AutomaticColorItemCaption="Automatic" AutomaticColorItemValue="0">
                                        </dx:SRFormatFontColorCommand>
                                        <dx:SRFormatBorderLineColorCommand EnableCustomColors="True" EnableAutomaticColorItem="True"
                                            AutomaticColorItemCaption="Automatic" AutomaticColorItemValue="0">
                                        </dx:SRFormatBorderLineColorCommand>
                                    </Items>
                                </dx:SRFontGroup>
                                <dx:SRAlignmentGroup>
                                    <Items>
                                        <dx:SRFormatAlignmentTopCommand></dx:SRFormatAlignmentTopCommand>
                                        <dx:SRFormatAlignmentMiddleCommand></dx:SRFormatAlignmentMiddleCommand>
                                        <dx:SRFormatAlignmentBottomCommand></dx:SRFormatAlignmentBottomCommand>
                                        <dx:SRFormatAlignmentLeftCommand></dx:SRFormatAlignmentLeftCommand>
                                        <dx:SRFormatAlignmentCenterCommand></dx:SRFormatAlignmentCenterCommand>
                                        <dx:SRFormatAlignmentRightCommand></dx:SRFormatAlignmentRightCommand>
                                        <dx:SRFormatDecreaseIndentCommand></dx:SRFormatDecreaseIndentCommand>
                                        <dx:SRFormatIncreaseIndentCommand></dx:SRFormatIncreaseIndentCommand>
                                        <dx:SRFormatWrapTextCommand></dx:SRFormatWrapTextCommand>
                                        <dx:SREditingMergeCellsGroupCommand></dx:SREditingMergeCellsGroupCommand>
                                    </Items>
                                </dx:SRAlignmentGroup>
                                <dx:SRNumberGroup ShowDialogBoxLauncher="True">
                                    <Items>
                                        <dx:SRFormatNumberAccountingCommand></dx:SRFormatNumberAccountingCommand>
                                        <dx:SRFormatNumberPercentCommand></dx:SRFormatNumberPercentCommand>
                                        <dx:SRFormatNumberCommaStyleCommand></dx:SRFormatNumberCommaStyleCommand>
                                        <dx:SRFormatNumberIncreaseDecimalCommand></dx:SRFormatNumberIncreaseDecimalCommand>
                                        <dx:SRFormatNumberDecreaseDecimalCommand></dx:SRFormatNumberDecreaseDecimalCommand>
                                    </Items>
                                </dx:SRNumberGroup>
                                <dx:SRCellsGroup>
                                    <Items>
                                        <dx:SRFormatInsertCommand></dx:SRFormatInsertCommand>
                                        <dx:SRFormatRemoveCommand></dx:SRFormatRemoveCommand>
                                        <dx:SRFormatFormatCommand></dx:SRFormatFormatCommand>
                                    </Items>
                                </dx:SRCellsGroup>
                                <dx:SREditingGroup>
                                    <Items>
                                        <dx:SRFormatAutoSumCommand></dx:SRFormatAutoSumCommand>
                                        <dx:SRFormatFillCommand></dx:SRFormatFillCommand>
                                        <dx:SRFormatClearCommand></dx:SRFormatClearCommand>
                                        <dx:SREditingSortAndFilterCommand></dx:SREditingSortAndFilterCommand>
                                        <dx:SREditingFindAndSelectCommand></dx:SREditingFindAndSelectCommand>
                                    </Items>
                                </dx:SREditingGroup>
                                <dx:SRStylesGroup>
                                    <Items>
                                        <dx:SRFormatAsTableCommand></dx:SRFormatAsTableCommand>
                                    </Items>
                                </dx:SRStylesGroup>
                            </Groups>
                        </dx:SRHomeTab>
                        <dx:SRInsertTab>
                            <Groups>
                                <dx:SRTablesGroup>
                                    <Items>
                                        <dx:SRInsertPivotTableCommand></dx:SRInsertPivotTableCommand>
                                        <dx:SRInsertTableCommand></dx:SRInsertTableCommand>
                                        <dx:RibbonButtonItem Text="Sample Data" Name="sampleDataButton" Size="Large"
                                            LargeImage-Url="/Content/images/NewTableStyle.svg">
                                        </dx:RibbonButtonItem>
                                    </Items>
                                </dx:SRTablesGroup>
                                <dx:SRIllustrationsGroup>
                                    <Items>
                                        <dx:SRFormatInsertPictureCommand></dx:SRFormatInsertPictureCommand>
                                    </Items>
                                </dx:SRIllustrationsGroup>
                                <dx:SRChartsGroup>
                                    <Items>
                                        <dx:SRInsertChartColumnCommand></dx:SRInsertChartColumnCommand>
                                        <dx:SRInsertChartLinesCommand></dx:SRInsertChartLinesCommand>
                                        <dx:SRInsertChartPiesCommand></dx:SRInsertChartPiesCommand>
                                        <dx:SRInsertChartBarsCommand></dx:SRInsertChartBarsCommand>
                                        <dx:SRInsertChartAreasCommand></dx:SRInsertChartAreasCommand>
                                        <dx:SRInsertChartScattersCommand></dx:SRInsertChartScattersCommand>
                                        <dx:SRInsertChartOthersCommand></dx:SRInsertChartOthersCommand>
                                    </Items>
                                </dx:SRChartsGroup>
                                <dx:SRLinksGroup>
                                    <Items>
                                        <dx:SRFormatInsertHyperlinkCommand></dx:SRFormatInsertHyperlinkCommand>
                                    </Items>
                                </dx:SRLinksGroup>
                            </Groups>
                        </dx:SRInsertTab>
                        <dx:SRPageLayoutTab>
                            <Groups>
                                <dx:SRPageSetupGroup ShowDialogBoxLauncher="True">
                                    <Items>
                                        <dx:SRPageSetupMarginsCommand></dx:SRPageSetupMarginsCommand>
                                        <dx:SRPageSetupOrientationCommand></dx:SRPageSetupOrientationCommand>
                                        <dx:SRPageSetupPaperKindCommand></dx:SRPageSetupPaperKindCommand>
                                    </Items>
                                </dx:SRPageSetupGroup>
                                <dx:SRPrintGroup ShowDialogBoxLauncher="True">
                                    <Items>
                                        <dx:SRPrintGridlinesCommand></dx:SRPrintGridlinesCommand>
                                        <dx:SRPrintHeadingsCommand></dx:SRPrintHeadingsCommand>
                                    </Items>
                                </dx:SRPrintGroup>
                            </Groups>
                        </dx:SRPageLayoutTab>
                        <dx:SRFormulasTab>
                            <Groups>
                                <dx:SRFunctionLibraryGroup>
                                    <Items>
                                        <dx:SRFunctionsAutoSumCommand></dx:SRFunctionsAutoSumCommand>
                                        <dx:SRFunctionsFinancialCommand></dx:SRFunctionsFinancialCommand>
                                        <dx:SRFunctionsLogicalCommand></dx:SRFunctionsLogicalCommand>
                                        <dx:SRFunctionsTextCommand></dx:SRFunctionsTextCommand>
                                        <dx:SRFunctionsDateAndTimeCommand></dx:SRFunctionsDateAndTimeCommand>
                                        <dx:SRFunctionsLookupAndReferenceCommand></dx:SRFunctionsLookupAndReferenceCommand>
                                        <dx:SRFunctionsMathAndTrigonometryCommand></dx:SRFunctionsMathAndTrigonometryCommand>
                                        <dx:SRFunctionsMoreCommand></dx:SRFunctionsMoreCommand>
                                    </Items>
                                </dx:SRFunctionLibraryGroup>
                                <dx:SRCalculationGroup>
                                    <Items>
                                        <dx:SRFunctionsCalculationOptionCommand></dx:SRFunctionsCalculationOptionCommand>
                                        <dx:SRFunctionsCalculateNowCommand></dx:SRFunctionsCalculateNowCommand>
                                        <dx:SRFunctionsCalculateSheetCommand></dx:SRFunctionsCalculateSheetCommand>
                                    </Items>
                                </dx:SRCalculationGroup>
                            </Groups>
                        </dx:SRFormulasTab>
                        <dx:SRDataTab Visible="False">
                            <Groups>
                                <dx:SRDataSortAndFilterGroup>
                                    <Items>
                                        <dx:SRDataSortAscendingCommand></dx:SRDataSortAscendingCommand>
                                        <dx:SRDataSortDescendingCommand></dx:SRDataSortDescendingCommand>
                                        <dx:SRDataFilterToggleCommand ShowText="True"></dx:SRDataFilterToggleCommand>
                                        <dx:SRDataFilterClearCommand></dx:SRDataFilterClearCommand>
                                        <dx:SRDataFilterReApplyCommand></dx:SRDataFilterReApplyCommand>
                                    </Items>
                                </dx:SRDataSortAndFilterGroup>
                                <dx:SRDataToolsGroup>
                                    <Items>
                                        <dx:SRDataToolsDataValidationGroupCommand></dx:SRDataToolsDataValidationGroupCommand>
                                    </Items>
                                </dx:SRDataToolsGroup>
                            </Groups>
                        </dx:SRDataTab>
                        <dx:SRReviewTab>
                            <Groups>
                                <dx:SRCommentsGroup>
                                    <Items>
                                        <dx:SRInsertCommentCommand></dx:SRInsertCommentCommand>
                                        <dx:SREditCommentCommand></dx:SREditCommentCommand>
                                        <dx:SRDeleteCommentCommand></dx:SRDeleteCommentCommand>
                                        <dx:SRShowHideCommentCommand></dx:SRShowHideCommentCommand>
                                    </Items>
                                </dx:SRCommentsGroup>
                            </Groups>
                        </dx:SRReviewTab>
                        <dx:SRViewTab>
                            <Groups>
                                <dx:SRDocumentViewsGroup>
                                    <Items>
                                        <dx:SRViewToggleEditingViewCommand></dx:SRViewToggleEditingViewCommand>
                                        <dx:SRViewToggleReadingViewCommand></dx:SRViewToggleReadingViewCommand>
                                    </Items>
                                </dx:SRDocumentViewsGroup>
                                <dx:SRShowGroup>
                                    <Items>
                                        <dx:SRViewShowGridlinesCommand></dx:SRViewShowGridlinesCommand>
                                        <dx:SRViewShowHeadingsCommand></dx:SRViewShowHeadingsCommand>
                                    </Items>
                                </dx:SRShowGroup>
                                <dx:SRViewGroup>
                                    <Items>
                                        <dx:SRFullScreenCommand></dx:SRFullScreenCommand>
                                    </Items>
                                </dx:SRViewGroup>
                                <dx:SRWindowGroup>
                                    <Items>
                                        <dx:SRViewFreezePanesGroupCommand></dx:SRViewFreezePanesGroupCommand>
                                    </Items>
                                </dx:SRWindowGroup>
                            </Groups>
                        </dx:SRViewTab>
                        <dx:SRReadingViewTab>
                            <Groups>
                                <dx:SRReadingViewGroup>
                                    <Items>
                                        <dx:SRViewToggleEditingViewCommand></dx:SRViewToggleEditingViewCommand>
                                        <dx:SRFilePrintCommand></dx:SRFilePrintCommand>
                                        <dx:SRDownloadCommand></dx:SRDownloadCommand>
                                        <dx:SREditingFindAndSelectCommand></dx:SREditingFindAndSelectCommand>
                                    </Items>
                                </dx:SRReadingViewGroup>
                            </Groups>
                        </dx:SRReadingViewTab>
                    </RibbonTabs>
                </dx:ASPxSpreadsheet>
            </div>

            <div class="flex-row flex-cell-15 placeholder"></div>
        </div>
    </form>
</body>
</html>
