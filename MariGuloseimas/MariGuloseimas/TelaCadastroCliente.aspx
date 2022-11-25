<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaCadastroCliente.aspx.cs" Inherits="MariGuloseimas.TelaCadastroCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblcliente">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">

            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome"></asp:BoundField>
                <asp:BoundField DataField="Cpf" HeaderText="Cpf"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
                <asp:BoundField DataField="Endereco" HeaderText="Endereco"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">
                
                    <ItemTemplate>
                        <asp:LinkButton ID="button1" runat="server"  Text="Deletar" CommandName="Deletar" CommandArgument='<%# Eval("cod_Cliente") %>' />

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
           <asp:Button ID="Button2" runat="server" Text="Novo Cliente" OnClick="Button2_Click" />
    </div>
</asp:Content>
