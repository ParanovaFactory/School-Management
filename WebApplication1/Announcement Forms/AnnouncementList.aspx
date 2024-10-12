<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="AnnouncementList.aspx.cs" Inherits="WebApplication1.Announcement_Forms.AnnouncementList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Announcer </th>
            <th scope="col">Title</th>
            <th scope="col">Context</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("AncmtId")%></th>
                            <td><%#Eval("ThcNameAndSurname")%></td>
                            <td><%#Eval("AncmtTitle")%></td>
                            <td><%#Eval("AncmtContext")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"AnnouncementDelete.aspx?AncmtId="+Eval("AncmtId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"AnnouncementEdit.aspx?AncmtId="+Eval("AncmtId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>
