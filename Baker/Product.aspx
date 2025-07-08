<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table height="400px" width="400px">
        <tr>
            <td>Type</td>
            <td>
                <asp:DropDownList ID="ddl_type" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>
                <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
                <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Image</td>
            <td>
                <asp:FileUpload ID="file_image" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
            </td>
        </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grd_product" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1200px" OnRowCommand="grd_product_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="Name" />
                        <asp:BoundField DataField="Producttype_name" HeaderText="Type" />
                        <asp:BoundField DataField="product_description" HeaderText="Description" />
                        <asp:BoundField DataField="product_weight" HeaderText="Weight" />
                        <asp:BoundField DataField="product_price" HeaderText="Price" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <img src="../Assets/Product/<%#Eval("product_image")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_gallery" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="gallery"><span style="color:red">Gallery</span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
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

