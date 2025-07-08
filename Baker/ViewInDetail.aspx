<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewInDetail.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="dv_ingredient" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td>    <asp:DetailsView ID="dv_ingredients" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" OnItemCommand="dv_ingredients_ItemCommand">
        <Fields>
            <asp:BoundField DataField="ingredient_name" HeaderText="Name" />
            <asp:BoundField DataField="ingredient_description" HeaderText="Description" />
            <asp:BoundField DataField="ingredient_weight" HeaderText="Weight" />
            <asp:BoundField DataField="ingredient_expiry" HeaderText="Expiry" />
            <asp:BoundField DataField="ingredient_price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src="../Assets/Ingredient/<%#Eval("ingredient_image")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_cart" runat="server" CommandArgument='<%# Eval("ingredient_id") %>' CommandName="cart"><span style="color:red">Add To Cart</span></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
            </td>
        </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td>
                <asp:GridView ID="grd_gallery" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="219px">
                    <Columns>
                        <asp:TemplateField HeaderText="Gallery">
                            <ItemTemplate>
                               <img src="../Assets/IngredientGallery/<%#Eval("ingallery_image")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

