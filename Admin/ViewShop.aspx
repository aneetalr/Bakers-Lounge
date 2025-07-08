<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewShop.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        
            <asp:GridView ID="grd_shop" runat="server" AutoGenerateColumns="False" OnRowCommand="grd_shop_RowCommand1" OnRowDataBound="grd_shop_RowDataBound" >
                <Columns>
                    <asp:BoundField DataField="shop_name" HeaderText="Name" />
                    <asp:BoundField DataField="shop_contact" HeaderText="Contact" />
                    <asp:BoundField DataField="shop_email" HeaderText="Email" />
                    <asp:BoundField DataField="shop_address" HeaderText="Address" />
                    <asp:BoundField DataField="district_name" HeaderText="District" />
                    <asp:BoundField DataField="place_name" HeaderText="Place" />
                    <asp:BoundField DataField="shop_licno" HeaderText="Licence No" />
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
                    <asp:BoundField DataField="shop_ownername" HeaderText="Owner Name" />
                    <asp:BoundField DataField="shop_ownercontact" HeaderText="Owner Contact" />
                    <asp:BoundField DataField="shop_owneraddr" HeaderText="Owner Address" />
                    <asp:TemplateField HeaderText="Owner's id">
                        <ItemTemplate>
                            <img src="../Assets/ShopOwner/<%#Eval("shop_ownerproof")%>" height="120" width="120" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("shop_pstatus") %>'/>
                            <br/>
                            <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="del">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        
  
</asp:Content>

