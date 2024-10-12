<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="TeacherList.aspx.cs" Inherits="WebApplication1.Teacher_Forms.TeacherList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Teacher</th>
            <th scope="col">Course </th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("ThcId")%></th>
                            <td><%#Eval("ThcNameAndSurname")%></td>
                            <td><%#Eval("CourseName")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"TeacherDelete.aspx?ThcId="+Eval("ThcId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>
