<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RepliedComplaints.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
    <table>
        <tr>
            <td style="text-align: center">BY BAKERS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_complaintb" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1200px">
        <Columns>
            <asp:BoundField DataField="complainttype_name" HeaderText="Complaint Type" />
            <asp:BoundField DataField="complaint_title" HeaderText="Title" />
            <asp:BoundField DataField="complaint_data" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_date" HeaderText="Date" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker's Name" />
            <asp:BoundField DataField="baker_address" HeaderText="Address" />
            <asp:BoundField DataField="baker_contact" HeaderText="Contact" />
            <asp:BoundField DataField="baker_email" HeaderText="Email" />
             <asp:BoundField DataField="complaint_reply" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_replydate" HeaderText="Date" />
           
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td style="text-align: center">BY SHOPS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_complaints" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1200px">
        <Columns>
            <asp:BoundField DataField="complainttype_name" HeaderText="Complaint Type" />
            <asp:BoundField DataField="complaint_title" HeaderText="Title" />
            <asp:BoundField DataField="complaint_data" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_date" HeaderText="Date" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop's Name" />
            <asp:BoundField DataField="shop_address" HeaderText="Address" />
            <asp:BoundField DataField="shop_contact" HeaderText="Contact" />
            <asp:BoundField DataField="shop_email" HeaderText="Email" />
             <asp:BoundField DataField="complaint_reply" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_replydate" HeaderText="Date" />
            
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td style="text-align: center">BY CUSTOMERS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_complaintc" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"  Width="1200px">
        <Columns>
            <asp:BoundField DataField="complainttype_name" HeaderText="Complaint Type" />
            <asp:BoundField DataField="complaint_title" HeaderText="Title" />
            <asp:BoundField DataField="complaint_data" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_date" HeaderText="Date" />
            <asp:BoundField DataField="user_name" HeaderText="Customer's Name" />
            <asp:BoundField DataField="user_address" HeaderText="Address" />
            <asp:BoundField DataField="user_contact" HeaderText="Contact" />
            <asp:BoundField DataField="user_email" HeaderText="Email" />
             <asp:BoundField DataField="complaint_reply" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_replydate" HeaderText="Date" />
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

