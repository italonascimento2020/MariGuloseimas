<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaHistoricoVenda.aspx.cs" Inherits="MariGuloseimas.TelaHistoricoVenda" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblHistVendas">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">

            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:BoundField DataField="Cod_Hist_Venda" HeaderText="Cod_Hist_Venda" ReadOnly="True" InsertVisible="False" SortExpression="Cod_Hist_Venda"></asp:BoundField>
                <asp:BoundField DataField="Cod_Venda" HeaderText="Cod_Venda" SortExpression="Cod_Venda"></asp:BoundField>
                <asp:BoundField DataField="Valor_Pago" HeaderText="Valor_Pago" SortExpression="Valor_Pago"></asp:BoundField>
                <asp:BoundField DataField="Data_Atualizacao" HeaderText="Data_Atualizacao" SortExpression="Data_Atualizacao"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">

                    <ItemTemplate>

                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<% #Eval("Cod_Hist_Venda") %>' />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Novo Historico de Venda" OnClick="Button1_Click" />
    </div>
</asp:Content>
