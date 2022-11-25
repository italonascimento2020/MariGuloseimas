<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaNovoTipoProduto.aspx.cs" Inherits="MariGuloseimas.TelaNovoTipoProduto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Desc_Tipo_Prod"></asp:Label>
    <asp:TextBox ID="TxtDesc_Tipo_Prod" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />
</asp:Content>
