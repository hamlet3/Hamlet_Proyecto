<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroPaquetes.aspx.cs" Inherits="AutoReyes.Registros.ReportePaquetes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="PaquetesForm" runat="server">

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
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Espacios"></asp:Label>
                <asp:TextBox ID="EspaciosTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EspaciosRequiredFieldValidator1" runat="server" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="EspaciosTextBox" ForeColor="Red" ErrorMessage="Digite la cantidad de espacios"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="EspaciosRangeValidator" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="EspaciosTextBox" MaximumValue="30" MinimumValue="1" Type="Integer" ErrorMessage=" El valor debe ser entre 1 y 30"></asp:RangeValidator>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Costo"></asp:Label>
                <asp:TextBox ID="CostoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CostoRequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" ControlToValidate="CostoTextBox" Display="Dynamic" ErrorMessage="Digite el costo"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="CostoRangeValidator" ValidationGroup="GuardarButton" ForeColor="Red" ControlToValidate="CostoTextBox" runat="server" MaximumValue="9999" MinimumValue="1" Display="Dynamic" Type="Integer" ErrorMessage="El valor debe ser mayor de 0"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="DescripcionTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ControlToValidate="DescripcionTextBox" ValidationGroup="GuardarButton" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Digite la descripcion"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="EliminarBtn_Click" Text="Eliminar" />
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
    </form>
</asp:Content>
