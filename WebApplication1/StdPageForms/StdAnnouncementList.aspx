<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Student.Master" AutoEventWireup="true" CodeBehind="StdAnnouncementList.aspx.cs" Inherits="WebApplication1.StdAnnouncement_Forms.AnnouncementList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Announcer </th>
            <th scope="col">Title</th>
            <th scope="col">Context</th>
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
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>
