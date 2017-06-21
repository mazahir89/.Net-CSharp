<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlCategory" runat="server" Height="239px" RepeatColumns="3" RepeatDirection="Horizontal" Width="824px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Price:<asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ProductDetail.aspx?ID="+Eval("ID") %>' Text='<%# "Read more" %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>