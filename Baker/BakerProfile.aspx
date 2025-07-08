<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="BakerProfile.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DetailsView ID="dv_baker" runat="server" AutoGenerateRows="False" Height="400px" Width="400px">
        <Fields>
            <asp:BoundField DataField="baker_name" HeaderText="Name" />
            <asp:BoundField DataField="baker_gender" HeaderText="Gender" />
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                   <img src="../Assets/Bakersphoto/<%#Eval("baker_photo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="baker_contact" HeaderText="Contact" />
            <asp:BoundField DataField="baker_email" HeaderText="Email" />
            <asp:BoundField DataField="baker_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:TemplateField HeaderText="ID Proof">
                <ItemTemplate>
                    <img src="../Assets/Bakerid/<%#Eval("baker_proof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="hlnk_editprofile" runat="server" NavigateUrl="~/Baker/BakerEditProfile.aspx"><span style="color:red">Edit Profile</span></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
        </center>
</asp:Content>

