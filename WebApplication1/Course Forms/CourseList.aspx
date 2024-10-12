<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="CourseList.aspx.cs" Inherits="WebApplication1.Course_Forms.CourseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
    <tr>
        <th scope="col">Id </th>
        <th scope="col">Course</th>
    </tr>
    <tbody>
        <tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("CoureseId")%></td>
                        <td><%#Eval("CourseName")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </tbody>
</table>

</asp:Content>
