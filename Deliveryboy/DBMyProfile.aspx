<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="DBMyProfile.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DetailsView ID="dv_deliveryboy" runat="server" AutoGenerateRows="False" Height="400px" Width="400px">
        <Fields>
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Contact" />
            <asp:BoundField DataField="deliveryboy_email" HeaderText="Email" />
            <asp:BoundField DataField="deliveryboy_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                    <img src="../Assets/DeliveryboyPhoto/<%#Eval("deliveryboy_photo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID proof 1">
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
                    <asp:HyperLink ID="hlnk_edit" runat="server" NavigateUrl="~/Deliveryboy/DBEditProfile.aspx">Edit</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
        </center>
</asp:Content>

