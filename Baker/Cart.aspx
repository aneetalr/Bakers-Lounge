<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table width="400px">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Baker/MyInBookCart.aspx"><h1><span style="color:red">INGREDIENT CART</span></h1></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                 &nbsp;</td>
        </tr>
        <tr>
            <td>
                 &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Baker/MyToolBookCart.aspx"><h1><span style="color:red">TOOL CART</span></h1></asp:HyperLink>
            </td>
        </tr>
                <tr>
            <td>
                 &nbsp;</td>
        </tr>
    </table>
        </center>
</asp:Content>

