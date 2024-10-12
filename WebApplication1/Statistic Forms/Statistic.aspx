<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="Statistic.aspx.cs" Inherits="WebApplication1.Statistic_Forms.Statistic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Total Students</label>
            <asp:TextBox ID="txt1" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Total Teacher</label>
            <asp:TextBox ID="txt2" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Total Course</label>
            <asp:TextBox ID="txt3" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Most Succesfull Course</label>
            <asp:TextBox ID="txt4" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Total Message</label>
            <asp:TextBox ID="txt5" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Total Announcements</label>
            <asp:TextBox ID="txt6" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Computer Science Score Average</label>
            <asp:TextBox ID="txt7" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Artificial Intelligence Score Average</label>
            <asp:TextBox ID="txt8" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Machine Learning Score Average</label>
            <asp:TextBox ID="txt9" runat="server" class="form-control" placeholder="" ReadOnly="True"></asp:TextBox>
        </div>
    </form>

</asp:Content>
