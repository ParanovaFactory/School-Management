<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Student.Master" AutoEventWireup="true" CodeBehind="StdScoreList.aspx.cs" Inherits="WebApplication1.StdPageForms.StdScoreList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
    <tr>
        <th scope="col">Student </th>
        <th scope="col">Course</th>
        <th scope="col">Exam1</th>
        <th scope="col">Exam2</th>
        <th scope="col">Exam3</th>
        <th scope="col">Average</th>
        <th scope="col">Status</th>
    </tr>
    <tbody>
        <tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Student")%></td>
                        <td><%#Eval("Course Name")%></td>
                        <td><%#Eval("Exam1")%></td>
                        <td><%#Eval("Exam2")%></td>
                        <td><%#Eval("Exam3")%></td>
                        <td><%#Eval("Averege")%></td>
                        <td><%#Eval("Status")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </tbody>
</table>

</asp:Content>
