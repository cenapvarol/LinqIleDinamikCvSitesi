<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="CvEntity.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table table-bordered" style="margin-left:20px">
        <tr>
            <th>ID</th>
            <th>ADSOYAD</th>
            <th>MAIL</th>
            <th>KONU</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID")  %></td>
                    <td><%# Eval("ADSOYAD")  %></td>
                    <td><%# Eval("MAIL")  %></td>
                    <td><%# Eval("KONU")  %></td>
                    <td><a href="MesajDetay.aspx?ID=<%# Eval("ID")%>" class="btn btn-warning">Mesajı Gör</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
