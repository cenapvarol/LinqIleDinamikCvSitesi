<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CvEntity.Hakkimda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left:20px">
        <tr>
            <th>ID</th>
            <th>YETENEK</th>
            <th>DENEYIM</th>
            <th>SIL</th>
            <th>GUNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID")  %></td>
                    <td><%# Eval("YETENEK")  %></td>
                    <td><%# Eval("DERECE")  %></td>
                    <td><a href="YetenekSil.aspx?ID=<%# Eval("ID")%>" class="btn btn-danger">Sil</a></td>
                    <td><a href="YetenekGuncelle.aspx?ID=<%# Eval("ID")%>" class="btn  btn-warning">Guncelle</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniYetenek.aspx" class="btn btn-primary"  style="margin-left:20px">Yeni Yetenek Ekle</a>
</asp:Content>
