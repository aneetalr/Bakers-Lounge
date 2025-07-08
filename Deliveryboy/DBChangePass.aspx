<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="DBChangePass.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table width="400px" height="400px">
        <tr>
            <td>Current Password</td>
            <td>
                <asp:TextBox ID="txt_currentpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>New Password</td>
            <td>
                <asp:TextBox ID="txt_newpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="txt_repass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" Text="Update" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

