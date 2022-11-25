<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaHistoricoVenda.aspx.cs" Inherits="MariGuloseimas.TelaNovaVenda" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
    <asp:TextBox ID="TxtStatus" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Cod_Prod"></asp:Label>
    <asp:TextBox ID="TxtCod_Prod" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Cod_Cliente"></asp:Label>
    <asp:TextBox ID="TxtCod_Cliente" runat="server"></asp:TextBox>

    <asp:Label ID="Label4" runat="server" Text="Cod_Pagamento"></asp:Label>
    <asp:TextBox ID="TxtCod_Pagamento" runat="server"></asp:TextBox>

    <asp:Label ID="Label5" runat="server" Text="Quantidade"></asp:Label>
    <asp:TextBox ID="TxtQuantidade" runat="server"></asp:TextBox>

    <asp:Label ID="Label6" runat="server" Text="Data_Venda"></asp:Label>
    <asp:TextBox ID="TxtData_Venda" runat="server"></asp:TextBox>

    <asp:Label ID="Label7" runat="server" Text="Valor_Pago"></asp:Label>
    <asp:TextBox ID="TxtValor_Pago" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Salvar" />

</asp:Content>
