<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="StudentAdd.aspx.cs" Inherits="WebApplication1.Student_Forms.StudentAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Name and Surname</label>
            <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name and Surname"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputPhone">Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
            <small id="phoneHelp" class="form-text text-muted">We'll never share your phone with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="InputEmail">Email address</label>
            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email address"></asp:TextBox>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="InputPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputImage">Image</label>
            <asp:TextBox ID="txtImage" runat="server" class="form-control" placeholder="Image"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>
