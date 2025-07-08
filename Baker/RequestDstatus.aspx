<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="RequestDstatus.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">&nbsp;CAKE DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_cake" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowDataBound="grd_cake_RowDataBound">
        <Columns>
            <asp:BoundField DataField="cake_name" HeaderText="Name" />
            <asp:BoundField DataField="cakebook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:BoundField DataField="cakebook_pickupaddr" HeaderText="Pickup Address" />
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Deliveryboy Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Deliveryboy Contact" />
            <asp:BoundField DataField="cakebook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="cakebook_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="assignborder_date" HeaderText="Assign Date" />
            <asp:TemplateField>
                <ItemTemplate>
                   <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("cakebook_id") %>' />
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
            <td style="text-align: center">PRODUCT DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_product" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px"  OnRowDataBound="grd_product_RowDataBound">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Name" />
            <asp:BoundField DataField="productbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:BoundField DataField="productbook_pickupaddr" HeaderText="Pickup Address" />
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Deliveryboy Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Deliveryboy Contact" />
            <asp:BoundField DataField="productbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="productbook_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="assignborder_date" HeaderText="Assign Date" />
            <asp:TemplateField>
                <ItemTemplate>
                   <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("productbook_id") %>' />
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
            <td style="text-align: center">CUSTOMIZED CAKE DELIVERY DETAILS</td>
        </tr>
            <tr>
                <td>
                    <asp:GridView ID="grd_ccake" runat="server" ShowHeaderWhenEmpty="True" Width="1350px" OnRowDataBound="grd_ccake_RowDataBound" AutoGenerateColumns="False" >
                        <Columns>
            <asp:BoundField DataField="ccake_shape" HeaderText="Shape" />
            <asp:BoundField DataField="flavour_name" HeaderText="Flavour" />
            <asp:BoundField DataField="ccake_weight" HeaderText="Weight" />
            <asp:BoundField DataField="ccake_detail" HeaderText="Detail" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:BoundField DataField="ccake_pickupaddr" HeaderText="Pickup Address" />
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Deliveryboy Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Deliveryboy Contact" />
            <asp:BoundField DataField="ccake_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="ccake_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="assignborder_date" HeaderText="Assign Date" />
            <asp:TemplateField>
                <ItemTemplate>
                   <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ccake_id") %>' />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
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

