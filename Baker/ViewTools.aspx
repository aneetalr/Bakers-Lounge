<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewTools.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DataList ID="dl_tool" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="dl_tool_ItemCommand">
        <ItemTemplate>
            <img src="../Assets/Tools/<%#Eval("tool_image")%>" height="120" width="120" />
            <br />
            <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("tool_name") %>'></asp:Label>
            <br />
            <asp:Label ID="lbl_description" runat="server" Text='<%# Eval("tool_description") %>'></asp:Label>
            <br />
            <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("tool_price") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="details" CommandArgument='<%# Eval("tool_id") %>'><span style="color:red">View More</span></asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
        </center>
</asp:Content>

