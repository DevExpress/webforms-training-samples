<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TabPagePlaceholder.ascx.cs" Inherits="sample_5_15.TabPagePlaceholder" %>

<script runat="server">
  public string Name = "";
  public string Color = "#ffffff";
</script>

<div style="width: 100%; height: 100%; background-color: <%= Color %>; display: flex; align-items: center; justify-content: center;">
    Placeholder <%= Name %>
</div>