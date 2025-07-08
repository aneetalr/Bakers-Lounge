<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="BakerAssignRequest.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <br />
    <table>
        <tr>
            <td style="text-align: center">CAKE DELIVERY REQUEST</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_cake" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px">
        <Columns>
            <asp:BoundField DataField="cake_name" HeaderText="Name" />
            <asp:BoundField DataField="cakebook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker Name" />
            <asp:BoundField DataField="baker_contact" HeaderText="Baker Contact" />
            <asp:BoundField DataField="cakebook_pickupaddr" HeaderText="Pickup Address" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:BoundField DataField="cakebook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="cakebook_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="assignborder_date" HeaderText="Assign Date" />
            
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
            <td style="text-align: center">PRODUCT DELIVERY REQUEST</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_product" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Name" />
            <asp:BoundField DataField="productbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker Name" />
            <asp:BoundField DataField="baker_contact" HeaderText="Baker Contact" />
            <asp:BoundField DataField="productbook_pickupaddr" HeaderText="Pickup Address" />
             <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:BoundField DataField="productbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="productbook_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="assignborder_date" HeaderText="Assign Date" />
            
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
    <asp:GridView ID="grd_ccake" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px">
        <Columns>
            <asp:BoundField DataField="ccake_date" HeaderText="Date" />
            <asp:BoundField DataField="ccake_shape" HeaderText="Shape" />
            <asp:BoundField DataField="flavour_name" HeaderText="Flavour" />
            <asp:BoundField DataField="ccake_weight" HeaderText="Weight" />
            <asp:BoundField DataField="ccake_caption" HeaderText="Caption" />
            <asp:BoundField DataField="ccake_detail" HeaderText="Details" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker Name" />
            <asp:BoundField DataField="baker_contact" HeaderText="Baker Contact" />
            <asp:BoundField DataField="ccake_pickupaddr" HeaderText="Pickup Address" />
            <asp:BoundField DataField="ccake_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="ccake_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

