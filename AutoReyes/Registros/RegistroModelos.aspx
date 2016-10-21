<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroModelos.aspx.cs" Inherits="AutoReyes.RegistroModelos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="BuscarIdTxT" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdBtn" runat="server" Text="Buscar" OnClick="BuscarIdBtn_Click" />
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="DescripcionTxT" runat="server"></asp:TextBox>
                <asp:DropDownList ID="MarcasDDL" runat="server">
                    <asp:ListItem>Seleccione---</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoBtn" runat="server" OnClick="Button2_Click" Text="Nuevo" />
                <asp:Button ID="GuardarBtn" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarBtn" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
