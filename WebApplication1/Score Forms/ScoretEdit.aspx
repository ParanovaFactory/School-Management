<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="ScoretEdit.aspx.cs" Inherits="WebApplication1.Score_Forms.ScoretEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Exam1</label>
            <asp:TextBox ID="txtExam1" runat="server" class="form-control" placeholder="Exam1 Score"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputPhone">Exam2</label>
            <asp:TextBox ID="txtExam2" runat="server" class="form-control" placeholder="Exam2 Score"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputEmail">Exam3</label>
            <asp:TextBox ID="txtExam3" runat="server" class="form-control" placeholder="Exam3 Score"></asp:TextBox>
        </div>
        <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button4_Click1" />
    </form>
</asp:Content>
