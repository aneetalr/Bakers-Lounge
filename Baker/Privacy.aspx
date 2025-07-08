<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table width="400px">
        <tr>
            <td style="text-align:center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Baker/BakerProfile.aspx"><h1><span style="color:red">View Profile</span></h1></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Baker/BakerChangePass.aspx"><h1><span style="color:red">Change Password</span></h1></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Guest/Logout.aspx"><h1><span style="color:red">Logout</span></h1></asp:HyperLink>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

