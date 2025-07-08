<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewProductOrder.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">
                ORDER REQUEST</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_productbook" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_productbook_RowCommand" Width="1350px">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="Name" />
                        <asp:BoundField DataField="product_description" HeaderText="Description" />
                        <asp:BoundField DataField="product_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
                        <asp:BoundField DataField="user_email" HeaderText="Customer Email" />
                        <asp:BoundField DataField="productbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="productbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="productbook_deliverydate" HeaderText="Delivery Date" />
                        <asp:BoundField DataField="productbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:BoundField DataField="productbook_date" HeaderText="Booking Date" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_accept" runat="server" CommandArgument='<%# Eval("productbook_id") %>' CommandName="accept"><span style="color:red">Accept</span> </asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("productbook_id") %>' CommandName="del"><span style="color:red">Reject</span></asp:LinkButton>
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
        <br />
        <table>
        <tr>
            <td style="text-align: center">
                ACCEPTED ORDERS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_productaccept" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_productaccept_RowCommand" Width="1350px" OnRowDataBound="grd_productaccept_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="Name" />
                        <asp:BoundField DataField="product_description" HeaderText="Description" />
                        <asp:BoundField DataField="product_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
                        <asp:BoundField DataField="user_email" HeaderText="Customer Email" />
                        <asp:BoundField DataField="productbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="productbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="productbook_deliverydate" HeaderText="Delivery Date" />
                        <asp:BoundField DataField="productbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:BoundField DataField="productbook_date" HeaderText="Booking Date" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("productbook_id") %>' CommandName="assign"><span style="color:red">Assign Deliveryboy</span></asp:LinkButton>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("productbook_id") %>' />
                                <br />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("productbook_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
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
        <br />
        <table>
        <tr>
            <td style="text-align: center">
                REJECTED ORDERS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grd_productreject" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_productreject_RowCommand" Width="1350px">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="Name" />
                        <asp:BoundField DataField="product_description" HeaderText="Description" />
                        <asp:BoundField DataField="product_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
                        <asp:BoundField DataField="user_email" HeaderText="Customer Email" />
                        <asp:BoundField DataField="productbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="productbook_totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="productbook_deliverydate" HeaderText="Delivery Date" />
                        <asp:BoundField DataField="productbook_deliveryaddr" HeaderText="Delivery Address" />
                        <asp:BoundField DataField="productbook_date" HeaderText="Booking Date" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_delete0" runat="server" CommandArgument='<%# Eval("productbook_id") %>' CommandName="retrieve"><span style="color:red">Retrieve</span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                                       <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

