<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="InBookStatus.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">
                ORDER DETAILS <br />
        <br /></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_inorder" runat="server" AutoGenerateColumns="False" width="1350px" ShowHeaderWhenEmpty="true" >
                    <Columns>
                        <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
                        <asp:BoundField DataField="ingredient_description" HeaderText="Description" />
                        <asp:BoundField DataField="ingredient_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="ingredient_expiry" HeaderText="Expiry" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
                        <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="inbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="inbook_date" HeaderText="Booking Date" />
                        <asp:BoundField DataField="inbook_deliveryaddr" HeaderText="Delivery Address" />
                    </Columns>
                    <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
        </table>
        <br />
        <br />
        <table>
        <tr>
            <td style="text-align: center">
                ACCEPTED ORDERS <br />
        <br /></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_inaccept" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="GridView1_RowCommand" width="1350px" OnRowDataBound="grd_inaccept_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
                        <asp:BoundField DataField="ingredient_description" HeaderText="Description" />
                        <asp:BoundField DataField="ingredient_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="ingredient_expiry" HeaderText="Expiry" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
                        <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="inbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="inbook_date" HeaderText="Booking Date" />
                        <asp:BoundField DataField="inbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_paymenta0" runat="server" CommandArgument='<%# Eval("inbook_id") %>' CommandName="payment"><span style="color:red">Pay Now</span></asp:LinkButton>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("inbook_id") %>' />
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("inbook_id") %>' />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
            </table>
        <br />
        <br />
        
        <table>
        <tr>
            <td style="text-align: center">
                REJECTED ORDERS <br />
        <br /></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_inreject" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" width="1350px" >
                    <Columns>
                        <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
                        <asp:BoundField DataField="ingredient_description" HeaderText="Description" />
                        <asp:BoundField DataField="ingredient_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="ingredient_expiry" HeaderText="Expiry" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
                        <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="inbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="inbook_date" HeaderText="Booking Date" />
                        <asp:BoundField DataField="inbook_deliveryaddr" HeaderText="Delivery Address" />
                    </Columns>
                    <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

