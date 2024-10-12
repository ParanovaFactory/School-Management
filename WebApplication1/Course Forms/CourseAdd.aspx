<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="CourseAdd.aspx.cs" Inherits="WebApplication1.Course_Forms.CourseAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputCourse">Course</label>
            <asp:TextBox ID="txtCourse" runat="server" class="form-control" placeholder=" Course Name"></asp:TextBox>
        </div>
        <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button2_Click" />
    </form>
</asp:Content>
