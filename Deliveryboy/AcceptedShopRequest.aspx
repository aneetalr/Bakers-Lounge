<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="AcceptedShopRequest.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <br />
    <table>
        <tr>
            <td style="text-align: center">INGREDIENT DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_in" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_in_RowCommand" Width="1350px" OnRowDataBound="grd_in_RowDataBound">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("inbook_id") %>'></asp:HiddenField>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="picked" CommandArgument='<%# Eval("inbook_id") %>'><span style="color:red">Order Picked</span></asp:LinkButton> &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="out" CommandArgument='<%# Eval("inbook_id") %>'><span style="color:red">Out For Delivery</span></asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delivery" CommandArgument='<%# Eval("inbook_id") %>'><span style="color:red">Delivery Completed</span></asp:LinkButton>
                    &nbsp;<asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
    <asp:GridView ID="grd_tool" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_tool_RowCommand" Width="1350px" OnRowDataBound="grd_tool_RowDataBound">
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

            <asp:TemplateField>
                <ItemTemplate>
                     <asp:LinkButton ID="LinkButton4" runat="server" CommandName="picked" CommandArgument='<%# Eval("toolbook_id") %>'><span style="color:red">Order Picked</span></asp:LinkButton> &nbsp;&nbsp;&nbsp;
                   <asp:LinkButton ID="LinkButton3" runat="server" CommandName="out" CommandArgument='<%# Eval("toolbook_id") %>'><span style="color:red">Out For Delivery</span></asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delivery" CommandArgument='<%# Eval("toolbook_id") %>'><span style="color:red">Delivery Completed</span></asp:LinkButton>
                    &nbsp;<asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("toolbook_id") %>'></asp:HiddenField>
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

