<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ToolCart.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table height="400px" width="400px">
        <tr>
            <td>
                Name</td>
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
            <td>
                Price</td>
            <td>
                <asp:Label ID="lbl_price" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_add" runat="server" Text="+" OnClick="btn_add_Click" />
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_qnty" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_reduce" runat="server" Text="-" OnClick="btn_reduce_Click" />
            </td>
        </tr>
        <tr>
            <td>Total Amount</td>
            <td>&nbsp;&nbsp;
                <asp:TextBox ID="txt_amount" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_cart" runat="server" OnClick="Button1_Click" Text="Add To Cart" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

