<%@ Page Title="TelaCadastroProduto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaCadastroProduto.aspx.cs" Inherits="MariGuloseimas.TelaCadastroProduto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblProduto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="Delete">

            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:BoundField DataField="Cod_Prod" HeaderText="Cod_Prod"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome"></asp:BoundField>
                <asp:BoundField DataField="Tamanho" HeaderText="Tamanho"></asp:BoundField>
                <asp:BoundField DataField="Preco" HeaderText="Preco"></asp:BoundField>
                <asp:BoundField DataField="Cod_Tipo_Produto" HeaderText="Cod_Tipo_Produto"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">

                    <ItemTemplate>

                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<%# Eval("Cod_Prod")%>' />

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Novo Produto" OnClick="Button1_Click" />
    </div>
</asp:Content>
