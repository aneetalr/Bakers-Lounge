<%@ Page Title="" Language="C#" MasterPageFile="~/Baker/BakerMasterPage.master" AutoEventWireup="true" CodeFile="ViewComplaintStatus.aspx.cs" Inherits="Baker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td style="text-align: center">COMPLAINTS</td>
        </tr>
        <tr>
            <td >    <asp:GridView ID="grd_complaint" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grd_cmp_SelectedIndexChanged" ShowHeaderWhenEmpty="true" OnRowCommand="grd_cmp0_RowCommand" Width="1350px" >
        <Columns>
            <asp:BoundField DataField="complaint_title" HeaderText="Title" />
            <asp:BoundField DataField="complaint_data" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_date" HeaderText="Date" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%# Eval("complaint_id") %>' CommandName="del"><span style="color:red">Delete</span></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
        <tr>
            <td style="text-align: center">REPLIED COMPLAINTS</td>
        </tr>
        <tr>
            <td>    <asp:GridView ID="grd_cmp" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" Width="1350px" OnSelectedIndexChanged="grd_cmp_SelectedIndexChanged" >
        <Columns>
            <asp:BoundField DataField="complaint_title" HeaderText="Title" />
            <asp:BoundField DataField="complaint_data" HeaderText="Complaint" />
            <asp:BoundField DataField="complaint_date" HeaderText="Date" />
            <asp:BoundField DataField="complaint_reply" HeaderText="Reply" />
            <asp:BoundField DataField="complaint_replydate" HeaderText="Reply Date" />
        </Columns>
        <EmptyDataTemplate><div style="color:red;text-align:center;">No Record Available</div></EmptyDataTemplate>
    </asp:GridView>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

