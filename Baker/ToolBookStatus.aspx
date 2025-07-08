<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ToolBookStatus.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">
                ORDER DETAILS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_order" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_accept_RowCommand" Width="1350px">
                    <Columns>
                        <asp:BoundField DataField="tool_name" HeaderText="Name" />
                        <asp:BoundField DataField="tool_description" HeaderText="Description" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
                        <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="toolbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="toolbook_deliveryaddr" HeaderText="Delivery Address" />
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
                ACCEPTED ORDERS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_accept" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_accept_RowCommand" OnRowDataBound="grd_accept_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="tool_name" HeaderText="Name" />
                        <asp:BoundField DataField="tool_description" HeaderText="Description" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Owner Contact" />
                        <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="toolbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="toolbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_payment" runat="server" CommandArgument='<%# Eval("toolbook_id") %>' CommandName="payment"><span style="color:red">Pay Now</span></asp:LinkButton>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("toolbook_id") %>' />
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
                REJECTED ORDERS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_reject" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_accept_RowCommand" Width="1350px">
                    <Columns>
                        <asp:BoundField DataField="tool_name" HeaderText="Name" />
                        <asp:BoundField DataField="tool_description" HeaderText="Description" />
                        <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
                        <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
                        <asp:BoundField DataField="shop_email" HeaderText="Shop Email" />
                        <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
                        <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="toolbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="toolbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
                    </Columns>
                    <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

