<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroColores.aspx.cs" Inherits="AutoReyes.RegistroColores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 26px;
            width: 7px;
        }
        .auto-style5 {
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="BuscarIdTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarBtn_Click" Text="Buscar" />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Color"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DescripconTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" Enabled="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
