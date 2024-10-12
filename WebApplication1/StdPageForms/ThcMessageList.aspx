<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Student.Master" AutoEventWireup="true" CodeBehind="ThcMessageList.aspx.cs" Inherits="WebApplication1.StdPageForms.ThcMessageList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Sender</th>
        <th scope="col">Reciver</th>
        <th scope="col">Title</th>
        <th scope="col">Context</th>
    </tr>
    <tbody>
        <tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("MsgThcId")%></th>
                        <td><%#Eval("Sender")%></td>
                        <td><%#Eval("Reciver")%></td>
                        <td><%#Eval("MsgThcTitle")%></td>
                        <td><%#Eval("MsgThcContext")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </tbody>
</table>

</asp:Content>
