<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroPaquetes.aspx.cs" Inherits="AutoReyes.Registros.ReportePaquetes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="BuscarIdTxT" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdBtn" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Espacios"></asp:Label>
                <asp:TextBox ID="EspaciosTxT" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Costo"></asp:Label>
                <asp:TextBox ID="CostoTxT" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="DescripcionTxT" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoBtn" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarBtn" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarBtn" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
