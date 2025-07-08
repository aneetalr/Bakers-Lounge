<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="PickupProduct.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table height="400px" width="400px">
        <tr>
            <td>Pickup Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

