<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewToolDetail.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:DetailsView ID="dv_tool" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" OnItemCommand="dv_tool_ItemCommand" OnPageIndexChanging="dv_tool_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="tool_name" HeaderText="Name" />
            <asp:BoundField DataField="tool_description" HeaderText="Desciption" />
            <asp:BoundField DataField="tool_price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src="../Assets/Tools/<%#Eval("tool_image")%>" height="120" width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_cart" runat="server" CommandArgument='<%# Eval("tool_id") %>' CommandName="cart"><span style="color:red">Add To Cart</span></asp:LinkButton>
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
                <asp:GridView ID="grd_gallery" runat="server" AutoGenerateColumns="False" Width="210px">
                    <Columns>
                        <asp:TemplateField HeaderText="Gallery">
                            <ItemTemplate>
                                <img src="../Assets/ToolsGallery/<%#Eval("toolgallery_image")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

