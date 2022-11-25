<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaAgoraVai.aspx.cs" Inherits="MariGuloseimas.TelaAgoraVai" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Cod_Cliente" HeaderText="Id"></asp:BoundField>
            <asp:BoundField DataField="Nome" HeaderText="Nome" ></asp:BoundField>
            <asp:BoundField DataField="Cpf" HeaderText="Cpf"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
            <asp:BoundField DataField="Endereco" HeaderText="Endereco"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>

                   <asp:LinkButton ID="button" runat="server" Text="Deletar" CommandName="Deletar" CommandArgument='<%# Eval("Cod_Cliente") %>'/> 

                </ItemTemplate>
            </asp:TemplateField> 
        </Columns> 
    </asp:GridView>
</asp:Content>