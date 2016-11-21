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
        .auto-style6 {
            position: absolute;
            top: 356px;
            left: 369px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 260px;
            left: 224px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 260px;
            left: 407px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 292px;
            left: 224px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 356px;
            left: 232px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 264px;
            left: 185px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 296px;
            left: 180px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 235px;
            left: 224px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 294px;
            left: 407px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 356px;
            left: 295px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ColoresForm" runat="server">

    <table style="width:100%" >
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" ValidationGroup="BuscarIdTextBox" ForeColor="Red" Display="Dynamic" ControlToValidate="BuscarIdTextBox" runat="server" ErrorMessage="Digite Id" CssClass="auto-style19"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ValidationGroup="BuscarIdTextBox" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" CssClass="auto-style19"></asp:CompareValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="BuscarIdTextBox" runat="server" CssClass="auto-style8"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="BuscarBtn_Click" Text="Buscar" CssClass="auto-style9 btn btn-default" />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="auto-style10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="DescripcionTextBox" runat="server" ErrorMessage="Digite el color" ValidationGroup="GuardarButton" CssClass="auto-style22"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton" CssClass="auto-style22"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Id" CssClass="auto-style16"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Color" CssClass="auto-style17"></asp:Label>
            </td>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass="auto-style12" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" ValidationGroup="GuardarButton" CssClass="auto-style23" />
                <br />
                <br />
                <br />
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox"  OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="auto-style6 btn btn-info" />
                <br />
                <br />
                <br />
            </td>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
