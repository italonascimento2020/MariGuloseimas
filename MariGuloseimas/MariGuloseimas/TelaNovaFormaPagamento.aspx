<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaNovaFormaPagamento.aspx.cs" Inherits="MariGuloseimas.TelaNovaFormaPagamento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Desc_Forma_Pagamento"></asp:Label>
    <asp:TextBox ID="TxtDesc_Forma_Pagamento" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />
</asp:Content>