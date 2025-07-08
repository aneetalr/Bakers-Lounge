<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="ShopAssignRequest.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <br />
    <table>
        <tr>
            <td style="text-align: center">INGREDIENT DELIVERY REQUEST</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_in" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"  Width="1350px">
        <Columns>
            <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
            <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
            <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
            <asp:BoundField DataField="shop_address" HeaderText="Pickup Address" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker Name" />
            <asp:BoundField DataField="baker_contact" HeaderText="Baker Contact" />
            <asp:BoundField DataField="inbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="assignsorder_date" HeaderText="Assign Date" />
            
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
            <td style="text-align: center">TOOL DELIVERY REQUEST</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_tool" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"  Width="1350px">
        <Columns>
            <asp:BoundField DataField="tool_name" HeaderText="Name" />
            <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
             <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
            <asp:BoundField DataField="shop_address" HeaderText="Pickup Address" />
            <asp:BoundField DataField="baker_name" HeaderText="Baker Name" />
            <asp:BoundField DataField="baker_contact" HeaderText="Baker Contact" />
            <asp:BoundField DataField="toolbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="assignsorder_date" HeaderText="Assign Date" />
            
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

