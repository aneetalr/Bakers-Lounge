<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewDeliveryboy.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="grd_deliveryboy" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" width="1200px">
        <Columns>
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Name" />
            <asp:BoundField DataField="deliveryboy_gender" HeaderText="Gender" />
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                    <img src="../Assets/DeliveryboyPhoto/<%#Eval("deliveryboy_photo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Contact" />
            <asp:BoundField DataField="deliveryboy_email" HeaderText="Email" />
            <asp:BoundField DataField="deliveryboy_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:TemplateField HeaderText="ID Proof 1">
                <ItemTemplate>
                    <img src="../Assets/DeliveryboyProof/<%#Eval("deliveryboy_proof1")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID Proof 2">
                <ItemTemplate>
                    <img src="../Assets/DeliveryboyProof/<%#Eval("deliveryboy_proof2")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
        </center>
</asp:Content>

