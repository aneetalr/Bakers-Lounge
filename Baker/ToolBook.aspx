<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ToolBook.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="text-align: left">
        <table height="400px" width="400px">
            <tr>
                <td>Name</td>
                <td>
                    <asp:Label ID="lbl_name" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>
                    <asp:Label ID="lbl_qnty" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Total Amount</td>
                <td>
                    <asp:Label ID="lbl_amount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Delivery Address</td>
                <td>
                    <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_book" runat="server" OnClick="btn_book_Click" Text="Book" />
                </td>
            </tr>
        </table>
    </div>
        </center>
</asp:Content>

