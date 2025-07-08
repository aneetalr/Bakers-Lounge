<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="DStatus.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">INGREDIENT DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_in" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowDataBound="grd_in_RowDataBound">
        <Columns>
            <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
            <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
            <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
            <asp:BoundField DataField="shop_address" HeaderText="Pickup Address" />
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Deliveryboy Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Deliveryboy Contact" />
            <asp:BoundField DataField="inbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="assignsorder_date" HeaderText="Assign Date" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("inbook_id") %>' />
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
    <br />
    <table>
        <tr>
            <td style="text-align: center">TOOL DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_tool" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowDataBound="grd_tool_RowDataBound">
        <Columns>
            <asp:BoundField DataField="tool_name" HeaderText="Name" />
            <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" />
            <asp:BoundField DataField="shop_contact" HeaderText="Shop Contact" />
             <asp:BoundField DataField="shop_ownername" HeaderText="Shop Owner Name" />
            <asp:BoundField DataField="shop_ownercontact" HeaderText="Shop Owner Contact" />
            <asp:BoundField DataField="shop_address" HeaderText="Pickup Address" />
            <asp:BoundField DataField="deliveryboy_name" HeaderText="Deliveryboy Name" />
            <asp:BoundField DataField="deliveryboy_contact" HeaderText="Deliveryboy Contact" />
            <asp:BoundField DataField="toolbook_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="assignsorder_date" HeaderText="Assign Date" />
            <asp:TemplateField>
                <ItemTemplate>
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
        </center>
</asp:Content>

