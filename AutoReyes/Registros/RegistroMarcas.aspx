<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroMarcas.aspx.cs" Inherits="AutoReyes.Registros.RegistroMarcas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="BuscarIdTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Marcas"></asp:Label>
                <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="DescripcionTextBox" ErrorMessage="Digite la Marca"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server"  ValidationGroup="BuscarIdTextBox" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
