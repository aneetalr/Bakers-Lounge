<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewIngredients.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DataList ID="dl_ingredient" runat="server" OnItemCommand="dl_ingredient_ItemCommand" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <img src="../Assets/Ingredient/<%#Eval("ingredient_image")%>" height="120" width="120" /><br />
            <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("ingredient_name") %>'></asp:Label>
            <br />
            <asp:Label ID="lbl_description" runat="server" Text='<%# Eval("ingredient_description") %>'></asp:Label>
            <br />
            <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("ingredient_price") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ingredient_id") %>' CommandName="details"><span style="color:red">View More</span></asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
        </center>
</asp:Content>

