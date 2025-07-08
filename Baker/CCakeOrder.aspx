<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="CCakeOrder.aspx.cs" Inherits="Baker_Default" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1350px"  ShowHeaderWhenEmpty="true" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="ccake_date" HeaderText="Date" />
            <asp:BoundField DataField="ccake_shape" HeaderText="Shape" />
            <asp:BoundField DataField="flavour_name" HeaderText="Flavour" />
            <asp:BoundField DataField="ccake_weight" HeaderText="Weight" />
            <asp:BoundField DataField="ccake_caption" HeaderText="Caption" />
            <asp:BoundField DataField="ccake_detail" HeaderText="Details" />
            <asp:BoundField DataField="ccake_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="ccake_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_accept" runat="server" CommandArgument='<%# Eval("ccake_id") %>' CommandName="accept"><span style="color:red">Accept</span></asp:LinkButton>
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
                ACCEPTED ORDERS</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="1350px" ShowHeaderWhenEmpty="true" OnRowCommand="grd_accept_RowCommand" OnRowDataBound="GridView2_RowDataBound">
        <Columns>
            <asp:BoundField DataField="ccake_date" HeaderText="Date" />
            <asp:BoundField DataField="ccake_shape" HeaderText="Shape" />
            <asp:BoundField DataField="flavour_name" HeaderText="Flavour" />
            <asp:BoundField DataField="ccake_weight" HeaderText="Weight" />
            <asp:BoundField DataField="ccake_caption" HeaderText="Caption" />
            <asp:BoundField DataField="ccake_detail" HeaderText="Details" />
            <asp:BoundField DataField="ccake_deliverydate" HeaderText="Delivery Date" />
            <asp:BoundField DataField="ccake_deliveryaddr" HeaderText="Delivery Address" />
            <asp:BoundField DataField="user_name" HeaderText="Customer Name" />
            <asp:BoundField DataField="user_contact" HeaderText="Customer Contact" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_accept" runat="server" CommandArgument='<%# Eval("ccake_id") %>' CommandName="assign"><span style="color:red">Assign Deliveryboy</span></asp:LinkButton>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ccake_id") %>' />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                    <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("ccake_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
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

