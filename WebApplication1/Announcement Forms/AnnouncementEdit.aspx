<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="AnnouncementEdit.aspx.cs" Inherits="WebApplication1.Announcement_Forms.AnnouncementEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="form-group">
        <label for="InputName">Title</label>
        <asp:TextBox ID="txtTitle" runat="server" class="form-control" placeholder="Title"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="InputContext">Context</label>
        <textarea id="txtContext" cols="20" rows="4" runat="server" class="form-control" placeholder="Context"></textarea>
    </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
</form>
</asp:Content>
