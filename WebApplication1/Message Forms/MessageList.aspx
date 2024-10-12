<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Teacher.Master" AutoEventWireup="true" CodeBehind="MessageList.aspx.cs" Inherits="WebApplication1.Message_Forms.CMessageList" %>

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
            <th scope="col">Operations</th>
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
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"MessageDelete.aspx?MsgThcId="+Eval("MsgThcId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>
