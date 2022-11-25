<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaNovoCliente.aspx.cs" Inherits="MariGuloseimas.TelaNovoCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="TxtNome" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Cpf"></asp:Label>
    <asp:TextBox ID="TxtCpf" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>

    <asp:Label ID="Label4" runat="server" Text="Endereco"></asp:Label>
    <asp:TextBox ID="TxtEndereco" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />
</asp:Content>
