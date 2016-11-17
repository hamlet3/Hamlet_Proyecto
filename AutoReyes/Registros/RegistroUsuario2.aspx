<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario2.aspx.cs" Inherits="AutoReyes.Registros.RegistroUsuario2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>Nombre Completo</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="NombreCompletoTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Nombre de usuario</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Direccion</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>Contraseña</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ContraseñaTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Confirmar Contraseña</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>Numero de telefono</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TelefonoTextBox" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DescripcionDropDownList" runat="server">
                </asp:DropDownList>
                <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="TelefonoGridVierw" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" />
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
