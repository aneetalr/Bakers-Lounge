<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="AssignDBCCake.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
    <table>
        <tr>
            <td>District</td>
            <td>
                <asp:DropDownList ID="ddl_district" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Place</td>
            <td>
                <asp:DropDownList ID="ddl_place" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" />
            </td>
        </tr>
         </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grd_deliveryboy" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnRowCommand="grd_deliveryboy_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="deliveryboy_name" HeaderText="Name" />
                        <asp:BoundField DataField="deliveryboy_gender" HeaderText="Gender" />
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <img src="../Assets/DeliveryboyPhoto/<%#Eval("deliveryboy_photo")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="deliveryboy_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="deliveryboy_email" HeaderText="Email" />
                        <asp:BoundField DataField="deliveryboy_address" HeaderText="Address" />
                        <asp:TemplateField HeaderText="ID Proof 1">
                            <ItemTemplate>
                                <img src="../Assets/DeliveryboyProof/<%#Eval("deliveryboy_proof1")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID Proof 2">
                            <ItemTemplate>
                                <img src="../Assets/DeliveryboyProof/<%#Eval("deliveryboy_proof2")%>" height="120" width="120" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("deliveryboy_id") %>' CommandName="assign"><span style="color:red">Assign</span></asp:LinkButton>
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

