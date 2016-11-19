<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="AutoReyes.ConsultaUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 285px;
        }
        .auto-style5 {
            width: 355px;
        }
        .auto-style6 {
            width: 102px;
        }
        .auto-style7 {
            width: 100%;
            margin-left: 213px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 355px;
            height: 26px;
        }
        .auto-style10 {
            width: 285px;
            height: 26px;
        }
        .auto-style11 {
            width: 102px;
            height: 26px;
        }
        .auto-style12 {
            width: 210px;
        }
        .auto-style13 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;
                <h3>Buscar Usuario</h3>
                <asp:Label ID="Label1" runat="server" BorderStyle="Inset" Text="Busqueda por Nombre"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <h3>Busqueda de Numeros Telefonicos</h3>
                <asp:Label ID="Label2" runat="server" BorderStyle="Inset" Text="Busqueda por el Id del Usuario"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="BuscarUsuarioButton" runat="server" OnClick="ListarUsuarios_Click" Text="Buscar" />
                &nbsp;<asp:TextBox ID="BuscarNombreTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <asp:Button ID="BuscarIButton" runat="server" CssClass="col-xs-offset-0" OnClick="BuscarIdBtn_Click" Text="Buscar" />
                <asp:TextBox ID="BuscarIdTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:GridView ID="UsuariosGridvierw" runat="server">
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="TelefonosUsuarioGridVierw" runat="server" CssClass="auto-style8">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="RecargarButton" runat="server" Text="Recargar" OnClick="RecargarBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
