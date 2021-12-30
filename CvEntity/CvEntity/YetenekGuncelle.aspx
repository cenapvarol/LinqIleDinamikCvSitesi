<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="CvEntity.YetenekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4><asp:Label ID="Label1" runat="server" Text="Label">Guncellenecek Yetnek</asp:Label></h4>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
        <h4><asp:Label ID="Label2" runat="server" Text="Label">Guncellenecek Derece</asp:Label></h4>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning form-control" OnClick="Button1_Click" />
</asp:Content>
