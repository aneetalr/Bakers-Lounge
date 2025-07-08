<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="BakerEditProfile.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table width="400px" height="400px">
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contact</td>
            <td>
                <asp:TextBox ID="txt_contact" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

