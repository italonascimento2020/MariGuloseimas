<%@ Page Title="TelaCadastroVendas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaCadastroVendas.aspx.cs" Inherits="MariGuloseimas.TelaCadastroVendas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblVendas">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="Delete">
            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:BoundField DataField="Cod_Venda" HeaderText="Cod_Venda"></asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                <asp:BoundField DataField="Cod_Prod" HeaderText="Cod_Prod"></asp:BoundField>
                <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente"></asp:BoundField>
                <asp:BoundField DataField="Cod_Pagamento" HeaderText="Cod_Pagamento"></asp:BoundField>
                <asp:BoundField DataField="Quantidade" HeaderText="Quantidade"></asp:BoundField>
                <asp:BoundField DataField="Data_Venda" HeaderText="Data_Venda"></asp:BoundField>
                <asp:BoundField DataField="Valor_Pago" HeaderText="Valor_Pago"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">

                    <ItemTemplate>

                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<%# Eval("Cod_Venda")%>' />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Nova Venda" OnClick="Button1_Click" />
    </div>
</asp:Content>
