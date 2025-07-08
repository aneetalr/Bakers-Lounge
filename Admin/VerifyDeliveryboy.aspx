<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="VerifyDeliveryboy.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1 style="text-align:center">New Registration</h1>
    <asp:GridView ID="grd_deliveryboy" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1000px" OnRowCommand="grd_deliveryboy_RowCommand">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_accept" runat="server" CommandArgument='<%# Eval("deliveryboy_id") %>' CommandName="accept">Accept</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("deliveryboy_id") %>' CommandName="del">Reject</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
        <br />
        <br />
        <br />
        <h1 style="text-align:center">Rejected Registration</h1>
        <asp:GridView ID="grd_reject" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1000px" OnRowCommand="grd_reject_RowCommand">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_retrieve" runat="server" CommandArgument='<%# Eval("deliveryboy_id") %>' CommandName="retrieve">Retrieve</asp:LinkButton>
                   </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
        </center>
</asp:Content>

