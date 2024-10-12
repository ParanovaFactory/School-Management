<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="TeacherAdd.aspx.cs" Inherits="WebApplication1.Teacher_Forms.TeacherEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Name and Surname</label>
            <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name and Surname"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputImage">Image</label>
            <asp:TextBox ID="txtImage" runat="server" class="form-control" placeholder="Image Url"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputDepartment">Department</label>
        <asp:DropDownList ID="DropDownCourse" runat="server" class="form-control"></asp:DropDownList>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>
