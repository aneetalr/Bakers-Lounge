<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="VerifyShop.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table width="1000px">
            <tr>
                <td style="text-align:center;">New Registration</td>

            </tr>
            <tr>
                <td>
    <asp:GridView ID="grd_shop" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1000px" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Contact" />
            <asp:BoundField DataField="shop_email" HeaderText="Email" />
            <asp:BoundField DataField="shop_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:BoundField DataField="shop_licno" HeaderText="License No" />
            <asp:TemplateField HeaderText="Logo">
                <ItemTemplate>
                    <img src="../Assets/ShopLogo/<%#Eval("shop_logo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Proof">
                <ItemTemplate>
                    <img src="../Assets/ShopProof/<%#Eval("shop_proof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="shop_ownername" HeaderText="Owner's Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Owner's Contact" />
            <asp:BoundField DataField="shop_owneraddr" HeaderText="Owner's Address" />
            <asp:TemplateField HeaderText="Owner's ID ">
                <ItemTemplate>
                   <img src="../Assets/ShopOwner/<%#Eval("shop_ownerproof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_accept" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="accept">Accept</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="del">Reject</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
                    </td>
                </tr>>
            </table>
        <br />
        <br />
        <br />
        <table width="1000px">
         <tr>
                <td style="text-align:center">Rejected Registration</td>
             </tr>
            <tr>
                <td>
        <asp:GridView ID="grd_reject" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1000px" OnRowCommand="grd_reject_RowCommand">
        <Columns>
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Contact" />
            <asp:BoundField DataField="shop_email" HeaderText="Email" />
            <asp:BoundField DataField="shop_address" HeaderText="Address" />
            <asp:BoundField DataField="district_name" HeaderText="District" />
            <asp:BoundField DataField="place_name" HeaderText="Place" />
            <asp:BoundField DataField="shop_licno" HeaderText="License No" />
            <asp:TemplateField HeaderText="Logo">
                <ItemTemplate>
                    <img src="../Assets/ShopLogo/<%#Eval("shop_logo")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Proof">
                <ItemTemplate>
                    <img src="../Assets/ShopProof/<%#Eval("shop_proof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="shop_ownername" HeaderText="Owner's Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Owner's Contact" />
            <asp:BoundField DataField="shop_owneraddr" HeaderText="Owner's Address" />
            <asp:TemplateField HeaderText="Owner's ID ">
                <ItemTemplate>
                   <img src="../Assets/ShopOwner/<%#Eval("shop_ownerproof")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_retrieve" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="retrieve">Retrieve</asp:LinkButton>
                    </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
                    </td>
            </tr>
                    </table>
  
</asp:Content>

