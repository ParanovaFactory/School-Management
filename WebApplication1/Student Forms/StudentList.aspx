<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="WebApplication1.Student_Forms.Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name and Surname</th>
            <th scope="col">Phone</th>
            <th scope="col">Mail</th>
            <th scope="col">Password</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("StdId")%></th>
                            <td><%#Eval("StdNameAndSurname")%></td>
                            <td><%#Eval("StdPhone")%></td>
                            <td><%#Eval("StdMail")%></td>
                            <td><%#Eval("StdPassword")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#"StudentDelete.aspx?StdId="+Eval("StdId") %> runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl=<%#"StudentEdit.aspx?StdId="+Eval("StdId") %> CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                         </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>
