<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroColores.aspx.cs" Inherits="AutoReyes.RegistroColores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="BuscarIdTxT" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarBtn" runat="server" OnClick="BuscarBtn_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="DescripconTxT" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="NuevoBtn" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarBtn" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarBtn" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
