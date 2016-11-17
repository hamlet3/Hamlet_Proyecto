<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroEstados.aspx.cs" Inherits="AutoReyes.Registros.RegistroEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">Id<asp:TextBox ID="BuscarIdTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" runat="server" OnClick="BuscarIdButton_Click" Text="Buscar" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Estado<asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="Button1_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarButton_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
