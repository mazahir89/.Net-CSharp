<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 125px;
            height: 120px;
        }
        .auto-style7 {
            height: 120px;
        }
        .auto-style8 {
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' Width="140px" />
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Name:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Price:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Description:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAddToCartd" runat="server" Text="Add to Cart" OnClick="btnAddToCartd_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
