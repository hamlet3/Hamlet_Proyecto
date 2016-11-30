<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="MiCuentaAdmin.aspx.cs" Inherits="AutoReyes.WebForm.MiCuentaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 364px;
        }
        .auto-style5 {
            width: 65px;
        }
        .auto-style7 {
            width: 275px;
        }
        .auto-style8 {
            width: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style11">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Escriba su nombre" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Solo se acceptan letras" ForeColor="Red" Display="Dynamic" ValidationExpression="^[A-Z a-z]*$" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Escriba su direccion" ForeColor="Red" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="No se acceptan caracteres especiales" ForeColor="Red" ValidationGroup="Guardar" ValidationExpression="[0-9 A-Za-z]+$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><label>Nombre</label>&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="NombreTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">Direccion</td>
            <td class="auto-style7">
                <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:LinkButton ID="EditarLinkButton" runat="server" OnClick="EditarLinkButton_Click" ValidationGroup="Guardar">Editar</asp:LinkButton>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Nombre Usuario</td>
            <td class="auto-style2">
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">Email</td>
            <td class="auto-style7">
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Escriba su nombre de usuario" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="No se acceptan caracteres especiales" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar" ValidationExpression="[0-9 A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Escriba su email" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Formato erroneo" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
