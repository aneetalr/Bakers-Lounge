<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="MyInBookCart.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td>
                <asp:GridView ID="grd_incart" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_incart_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
                        <asp:BoundField DataField="ingredient_description" HeaderText="Description" />
                        <asp:BoundField DataField="ingredient_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="ingredient_expiry" HeaderText="Expiry" />
                        <asp:BoundField DataField="inbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="inbook_totalamount" HeaderText="Total Amount" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_book" runat="server" CommandArgument='<%# Eval("inbook_id") %>' CommandName="book"><span style="color:red">Book</span></asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("inbook_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
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

