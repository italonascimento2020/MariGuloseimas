<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaNovoHistoricoVenda.aspx.cs" Inherits="MariGuloseimas.TelaNovoHistoricoVenda" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Cod_Venda"></asp:Label>
    <asp:TextBox ID="TxtCod_Venda" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Valor_Pago"></asp:Label>
    <asp:TextBox ID="TxtValor_Pago" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Data_Atualização"></asp:Label>
    <asp:TextBox ID="TxtData_Atualização" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />
</asp:Content>
