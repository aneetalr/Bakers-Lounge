<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="grd_user" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" width="1200px">
        <Columns>
            <asp:BoundField DataField="user_name" HeaderText="Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Contact" />
            <asp:BoundField DataField="user_email" HeaderText="Email" />
            <asp:BoundField DataField="user_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
        </center>
</asp:Content>

