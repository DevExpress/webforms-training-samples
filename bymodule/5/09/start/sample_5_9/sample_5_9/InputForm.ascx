<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InputForm.ascx.cs" Inherits="sample_5_9.InputForm" %>

<dx:ASPxFormLayout ID="formLayout" runat="server" ShowItemCaptionColon="False">
    <Items>
        <dx:LayoutGroup GroupBoxDecoration="None" ColumnCount="12" UseDefaultPaddings="False" SettingsItemCaptions-Location="Top">
            <GridSettings>
                <Breakpoints>
                    <dx:LayoutBreakpoint MaxWidth="700" Name="medium" ColumnCount="12" />
                    <dx:LayoutBreakpoint MaxWidth="400" Name="small" ColumnCount="12" />
                </Breakpoints>
            </GridSettings>
            <Items>
                <dx:LayoutItem FieldName="Place" ColumnSpan="10">
                    <SpanRules>
                        <dx:SpanRule BreakpointName="medium" ColumnSpan="8" />
                        <dx:SpanRule BreakpointName="small" ColumnSpan="6" />
                    </SpanRules>
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="placeEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="Number" ColumnSpan="2">
                    <SpanRules>
                        <dx:SpanRule BreakpointName="medium" ColumnSpan="4" />
                        <dx:SpanRule BreakpointName="small" ColumnSpan="6" />
                    </SpanRules>
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="numberEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:LayoutGroup>
        <dx:LayoutItem FieldName="DiveSite" CaptionSettings-Location="Top">
            <Paddings PaddingTop="20px" />
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer runat="server">
                    <dx:ASPxTextBox ID="diveSiteEdit" runat="server"></dx:ASPxTextBox>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
        <dx:LayoutGroup GroupBoxDecoration="None" ColumnCount="12" UseDefaultPaddings="False" SettingsItemCaptions-Location="Top">
            <Paddings PaddingTop="20px" />
            <GridSettings>
                <Breakpoints>
                    <dx:LayoutBreakpoint MaxWidth="700" Name="medium" ColumnCount="6" />
                    <dx:LayoutBreakpoint MaxWidth="400" Name="small" ColumnCount="4" />
                </Breakpoints>
            </GridSettings>
            <Items>
                <dx:LayoutGroup GroupBoxDecoration="None" ColumnSpan="2" UseDefaultPaddings="False">
                    <Items>
                        <dx:LayoutItem FieldName="Air">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxCheckBox ID="airCheck" runat="server"></dx:ASPxCheckBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem FieldName="Nitrox">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxCheckBox ID="nitroxCheck" runat="server"></dx:ASPxCheckBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutItem FieldName="NitroxPercent" ColumnSpan="2" Caption="Nitrox %">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="nitroxPercentEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="TankSize" ColumnSpan="2">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="tankSizeEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="TankIn" ColumnSpan="2" Caption="In">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="tankInEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="TankOut" ColumnSpan="2" Caption="Out">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="tankOutEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="Temperature" ColumnSpan="2">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="temperatureEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:LayoutGroup>
        <dx:LayoutGroup GroupBoxDecoration="None" ColumnCount="12" SettingsItemCaptions-Location="Top" UseDefaultPaddings="False">
            <Paddings PaddingTop="20px" />
            <GridSettings>
                <Breakpoints>
                    <dx:LayoutBreakpoint MaxWidth="700" Name="medium" ColumnCount="6" />
                    <dx:LayoutBreakpoint MaxWidth="400" Name="small" ColumnCount="4" />
                </Breakpoints>
            </GridSettings>
            <Items>
                <dx:LayoutItem FieldName="Weight" ColumnSpan="2">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="weightEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="Duration" ColumnSpan="2">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="durationEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="Depth" ColumnSpan="2">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="depthEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="DiveCenter" ColumnSpan="6">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="diveCenterEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:LayoutGroup>
        <dx:LayoutItem FieldName="Comments" Paddings-PaddingTop="20px" CaptionSettings-Location="Top">
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer runat="server">
                    <dx:ASPxMemo ID="commentsMemo" runat="server" Rows="4"></dx:ASPxMemo>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
        <dx:LayoutGroup GroupBoxDecoration="None" ColumnCount="12" SettingsItemCaptions-Location="Top" UseDefaultPaddings="False">
            <Paddings PaddingTop="20px" />
            <GridSettings>
                <Breakpoints>
                    <dx:LayoutBreakpoint MaxWidth="700" Name="medium" ColumnCount="12" />
                    <dx:LayoutBreakpoint MaxWidth="400" Name="small" ColumnCount="12" />
                </Breakpoints>
            </GridSettings>
            <Items>
                <dx:LayoutItem FieldName="Date" ColumnSpan="2">
                    <SpanRules>
                        <dx:SpanRule BreakpointName="medium" ColumnSpan="4" />
                        <dx:SpanRule BreakpointName="small" ColumnSpan="6" />
                    </SpanRules>
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="dateEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem FieldName="Signature" ColumnSpan="10">
                    <SpanRules>
                        <dx:SpanRule BreakpointName="medium" ColumnSpan="8" />
                        <dx:SpanRule BreakpointName="small" ColumnSpan="6" />
                    </SpanRules>
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="signatureEdit" runat="server"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:LayoutGroup>
    </Items>
</dx:ASPxFormLayout>
