<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="MyToolBookCart.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td>
                <asp:GridView ID="grd_toolcart" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_toolcart_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="tool_name" HeaderText="Name" />
                        <asp:BoundField DataField="tool_description" HeaderText="Description" />
                        <asp:BoundField DataField="toolbook_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="toolbook_totalamount" HeaderText="Total Amount" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_book" runat="server" CommandArgument='<%# Eval("toolbook_id") %>' CommandName="book"><span style="color:red">Book</span></asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("toolbook_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
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

