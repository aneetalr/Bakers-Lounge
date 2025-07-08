<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="CCakeAmount.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="400px">
        <tr>
            <td>Total Amount</td>
            <td>
                <asp:TextBox ID="txt_amnt" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td>Pickup Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
            </td>
        </tr>
    </table>
</asp:Content>

