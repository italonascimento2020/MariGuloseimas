<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaFormaPagamento.aspx.cs" Inherits="MariGuloseimas.TelaFormaPagamento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblFormaPagamento">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">

            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cod_Pagamento" HeaderText="Cod_Pagamento" ReadOnly="True" InsertVisible="False" SortExpression="Cod_Pagamento"></asp:BoundField>
                <asp:BoundField DataField="Desc_Forma_Pagamento" HeaderText="Desc_Forma_Pagamento" SortExpression="Desc_Forma_Pagamento"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">

                    <ItemTemplate>

                        <asp:LinkButton ID="button1" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<% #Eval("Cod_Pagamento") %>' />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Nova Forma Pagamento" OnClick="Button1_Click" />
    </div>
</asp:Content>
