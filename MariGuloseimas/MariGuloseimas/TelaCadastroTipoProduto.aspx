<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TelaCadastroTipoProduto.aspx.cs" Inherits="MariGuloseimas.TelaCadastroTipoProduto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tblTipoProduto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="Delete">

            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cod_Tipo_Produto" HeaderText="Cod_Tipo_Produto" ReadOnly="True" InsertVisible="False" SortExpression="Cod_Tipo_Produto"></asp:BoundField>
                <asp:BoundField DataField="Desc_Tipo_Prod" HeaderText="Desc_Tipo_Prod" SortExpression="Desc_Tipo_Prod"></asp:BoundField>
                <asp:TemplateField HeaderText="Ações">
                    <ItemTemplate>

                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<% # Eval("Cod_Tipo_Produto")%>' />

                    </ItemTemplate>


                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Novo Tipo" OnClick="Button1_Click" />
    </div>
</asp:Content>
