<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="InCart.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
            <table height="400px" width="400px">
        <tr>
            <td>Name</td>
            <td>
                <asp:Label ID="lbl_name" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:Label ID="lbl_description" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Weight</td>
            <td>
                <asp:Label ID="lbl_weight" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Expiry</td>
            <td>
                <asp:Label ID="lbl_expiry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
                <asp:Label ID="lbl_price" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_plus" runat="server" Text="+" OnClick="btn_plus_Click" />
                <asp:TextBox ID="txt_qnty" runat="server"></asp:TextBox>
                <asp:Button ID="btn_minus" runat="server" Text="-" OnClick="btn_minus_Click" style="width: 20px" />
            </td>
        </tr>
        <tr>
            <td>Total Amount</td>
            <td>
                <asp:TextBox ID="txt_amount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_cart" runat="server" Text="Add To Cart" OnClick="btn_cart_Click" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

