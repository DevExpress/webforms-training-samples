<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_7._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxFormLayout ID="formLayout" runat="server">
            <Items>
                <dx:LayoutItem Caption="Name" FieldName="EventName" RequiredMarkDisplayMode="Required"
                    ColSpan="1">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox runat="server" NullText="Event Name" Width="170px" ID="formLayout_E1">
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="The Event Name is required"></RequiredField>
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Description" FieldName="Description" ColSpan="1">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox runat="server" NullText="Describe the event" Width="170px" ID="formLayout_E2">
                                <ValidationSettings Display="Dynamic"></ValidationSettings>
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Capacity" FieldName="TargetCapacity" ColSpan="1">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxSpinEdit runat="server" MaxValue="300" MinValue="10" NullText="Required Capacity"
                                Number="0" DisplayFormatString="g" ID="formLayout_E5">
                                <ValidationSettings Display="Dynamic"></ValidationSettings>
                            </dx:ASPxSpinEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutGroup Caption="Timeframe" ColSpan="1">
                    <Items>
                        <dx:LayoutItem Caption="Starts On" FieldName="StartDate" RequiredMarkDisplayMode="Required"
                            ColSpan="1">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxDateEdit runat="server" DisplayFormatString="d" ID="formLayout_E3">
                                        <ValidationSettings Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="The Starts On field is required."></RequiredField>
                                        </ValidationSettings>
                                    </dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Ends On" FieldName="EndDate" RequiredMarkDisplayMode="Required"
                            ColSpan="1">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxDateEdit runat="server" DisplayFormatString="d" ID="formLayout_E4">
                                        <ValidationSettings Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="The Ends On field is required."></RequiredField>
                                        </ValidationSettings>
                                    </dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutItem ShowCaption="False" ColSpan="1" HorizontalAlign="Right">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxButton runat="server" ID="formLayout_E6" Text="Submit" OnClick="submitButton_Click">
                            </dx:ASPxButton>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:ASPxFormLayout>
    </form>
</body>
</html>
