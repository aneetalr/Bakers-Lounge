<%@ Page Title="" Language="C#" MasterPageFile="~/Deliveryboy/DBMasterPage.master" AutoEventWireup="true" CodeFile="AcceptedBakerRequest.aspx.cs" Inherits="Deliveryboy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <br />
    <table>
        <tr>
            <td style="text-align: center">&nbsp;CAKE DELIVERY DETAILS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="grd_cake" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_cake_RowCommand" Width="1350px" OnRowDataBound="grd_cake_RowDataBound">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="picked" CommandArgument='<%# Eval("cakebook_id") %>'><span style="color:red">Order picked</span></asp:LinkButton>
                    &nbsp; <asp:LinkButton ID="LinkButton3" runat="server" CommandName="out" CommandArgument='<%# Eval("cakebook_id") %>'><span style="color:red">Out For Delivery</span></asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delivery" CommandArgument='<%# Eval("cakebook_id") %>'><span style="color:red">Delivery Completed</span></asp:LinkButton>
                    &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("cakebook_id") %>'></asp:HiddenField><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
    <asp:GridView ID="grd_product" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_product_RowCommand" OnRowDataBound="grd_product_RowDataBound">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="picked" CommandArgument='<%# Eval("productbook_id") %>'><span style="color:red">Order Picked</span></asp:LinkButton>
                    &nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandName="out" CommandArgument='<%# Eval("productbook_id") %>'><span style="color:red">Out For Delivery</span></asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delivery" CommandArgument='<%# Eval("productbook_id") %>'><span style="color:red">Delivery Completed</span></asp:LinkButton>
                    &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("productbook_id") %>'></asp:HiddenField><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
    <asp:GridView ID="grd_ccake" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_ccake_RowCommand" OnRowDataBound="grd_ccake_RowDataBound">
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
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="picked" CommandArgument='<%# Eval("ccake_id") %>'><span style="color:red">Order Picked</span></asp:LinkButton>
                    &nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandName="out" CommandArgument='<%# Eval("ccake_id") %>'><span style="color:red">Out For Delivery</span></asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delivery" CommandArgument='<%# Eval("ccake_id") %>'><span style="color:red">Delivery Completed</span></asp:LinkButton>
                    &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ccake_id") %>'></asp:HiddenField><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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

