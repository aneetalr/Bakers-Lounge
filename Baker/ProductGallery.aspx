<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ProductGallery.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
  
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table width="400px">
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
            <td>
                <asp:GridView ID="grd_gallery" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" OnRowCommand="grd_gallery_RowCommand" Width="500px">
                    <Columns>
                        <asp:TemplateField HeaderText="Images">
                            <ItemTemplate>
                                <img src="../Assets/ProductGallery/<%#Eval("gallery_image")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("gallery_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table><br />
        <br />
        <br />
        <table>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="btn_back_Click" Text="Back to products" />
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

