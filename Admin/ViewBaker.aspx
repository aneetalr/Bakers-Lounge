<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewBaker.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="grd_baker" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1200px" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="baker_name" HeaderText="Name" />
            <asp:BoundField DataField="baker_gender" HeaderText="Gender" />
            <asp:BoundField DataField="baker_contact" HeaderText="Contact" />
            <asp:BoundField DataField="baker_email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                    <img src="../Assets/Bakersphoto/<%#Eval("baker_photo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="baker_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:TemplateField HeaderText="ID Proof">
                <ItemTemplate>
                   <img src="../Assets/Bakerid/<%#Eval("baker_proof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
        </center>
</asp:Content>

