<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="SearchShop.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1 style="text-align:center">Shop Search</h1>
    <table cellpadding="10" align="center">
       <tr>
            <td>District</td>
            <td>
                <asp:DropDownList ID="ddl_district" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        
            <td>Place</td>
            <td>
                <asp:DropDownList ID="ddl_place" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
       
           
            <td colspan="2">
                <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" />
            </td>
        </tr>
        </table>
        </center>
    <br />
    <br />
    <br />
         <center>
             <table cellpadding="10" align="center">
        <tr>
            <td colspan="2">
                <asp:DataList ID="dl_shop" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="dl_shop_ItemCommand" Width="642px">
                    <ItemTemplate>
                        <img src="../Assets/ShopLogo/<%#Eval("shop_logo")%>" height="120" width="120" /><br />
                        <asp:Label ID="lbl_sname" runat="server" Text='<%# Eval("shop_name") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lbl_contact" runat="server" Text='<%# Eval("shop_contact") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lbl_addr" runat="server" Text='<%# Eval("shop_address") %>'></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="tools"><span style="color:red;">View Tools</span></asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("shop_id") %>' CommandName="ingredients"><span style="color:red;">View Ingredients</span></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    </center>`
</asp:Content>

