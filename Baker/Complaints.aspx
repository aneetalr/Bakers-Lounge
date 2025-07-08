<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="Complaints.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table height="400px" width="400px">
        <tr>
            <td>Complaint Type</td>
            <td>
                <asp:DropDownList ID="ddl_type" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Title</td>
            <td>
                <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Complaint</td>
            <td>
                <asp:TextBox ID="txt_cmplt" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_send" runat="server" OnClick="btn_send_Click" Text="Send" Width="56px" style="margin-top: 0px" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

