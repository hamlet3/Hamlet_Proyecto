<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroMotores.aspx.cs" Inherits="AutoReyes.RegistroMotores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="BuscarIdTextBox" runat="server" OnTextChanged="BuscarIdTxT_TextChanged"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Motor"></asp:Label>
                <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" Enabled="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
