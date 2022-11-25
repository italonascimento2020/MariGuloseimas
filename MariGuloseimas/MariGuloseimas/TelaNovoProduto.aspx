<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaNovoProduto.aspx.cs" Inherits="MariGuloseimas.TelaNovoProduto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="TxtNome" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Tamanho"></asp:Label>
    <asp:TextBox ID="TxtTamanho" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Preco"></asp:Label>
    <asp:TextBox ID="TxtPreco" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />
</asp:Content>