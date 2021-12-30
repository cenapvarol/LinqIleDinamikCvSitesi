<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="CvEntity.YeniYetenek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni Yetenek Ekleme Sayfası</h4>
    <br />
    <h4 style="margin-left:20px">
        <asp:Label ID="Label1" runat="server" Text="Yetenek Açıklama"></asp:Label>
    </h4>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yeteneği yazınız"></asp:TextBox>
    <br />
        <h4 style="margin-left:20px">
        <asp:Label ID="Label2" runat="server" Text="Derece"></asp:Label>
    </h4>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Derece yazınız"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />


</asp:Content>
