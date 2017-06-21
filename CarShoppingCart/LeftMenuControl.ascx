<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenuControl.ascx.cs" Inherits="LeftMenuControl" %>
<asp:DataList ID="dlMenu" runat="server" OnSelectedIndexChanged="dlMenu_SelectedIndexChanged" Width="250px">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Category.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
