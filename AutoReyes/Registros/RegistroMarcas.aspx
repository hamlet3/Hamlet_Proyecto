<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroMarcas.aspx.cs" Inherits="AutoReyes.Registros.RegistroMarcas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            top: 251px;
            left: 246px;
            z-index: 1;
        }
        .auto-style5 {
        width: 580px;
    }
    .auto-style6 {
        width: 50px;
    }
    .auto-style10 {
        position: absolute;
        top: 307px;
        left: 400px;
        z-index: 1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="MarcasForm" runat="server">

    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5">
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox" CssClass="auto-style4" style="position: relative"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                        </td>
                        <td class="auto-style5">
                <asp:TextBox ID="BuscarIdTextBox" CssClass="form-control" placeholder="Id" Width="200px" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" CssClass="btn btn-info" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" style="z-index: 1; position: absolute; top: 243px; left: 611px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Marcas"></asp:Label>
                        </td>
                        <td class="auto-style5">
                <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control" placeholder="Marca" Width="200px" OnTextChanged="DescripcionTextBox_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="DescripcionTextBox" ErrorMessage="Digite la Marca" CssClass="auto-style10"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton" CssClass="auto-style10"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" CssClass="btn btn-group" Text="Nuevo" style="z-index: 1; position: absolute; top: 356px; left: 308px" />
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" CssClass="btn btn-success" OnClick="GuardarBtn_Click" Text="Guardar" style="z-index: 1; position: absolute; top: 356px; left: 468px" />
                <asp:Button ID="EliminarButton" runat="server"  ValidationGroup="BuscarIdTextBox" CssClass="btn btn-danger" OnClick="EliminarBtn_Click" Text="Eliminar" style="z-index: 1; position: absolute; top: 356px; left: 638px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
