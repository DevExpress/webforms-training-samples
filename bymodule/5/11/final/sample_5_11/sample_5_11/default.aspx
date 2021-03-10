<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sample_5_11._default" %>

<%@ Register Assembly="DevExpress.Xpo.v20.1, Version=20.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:XpoDataSource ID="fileItemSource" runat="server" TypeName="sample_5_11.FileItem"
            OnInserted="XpoDataSource1_Inserted">
        </dx:XpoDataSource>

        <dx:ASPxFileManager ID="fileManager" runat="server" ProviderType="DataSource" DataSourceID="fileItemSource">
            <Settings RootFolder="Root" ThumbnailFolder="~/Thumb/" />
            <SettingsEditing AllowCreate="True" AllowRename="True" AllowMove="True" AllowCopy="True"
                AllowDelete="True" AllowDownload="True"></SettingsEditing>
            <SettingsUpload>
                <AdvancedModeSettings EnableMultiSelect="True"></AdvancedModeSettings>
            </SettingsUpload>
            <SettingsDataSource ParentKeyFieldName="ParentId" NameFieldName="Name" LastWriteTimeFieldName="LastWriteTime"
                KeyFieldName="Oid" IsFolderFieldName="IsFolder" FileBinaryContentFieldName="Content" />
            <SettingsAdaptivity Enabled="True" />
        </dx:ASPxFileManager>
    </form>
</body>
</html>
