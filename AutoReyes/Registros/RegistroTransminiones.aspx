<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroTransminiones.aspx.cs" Inherits="AutoReyes.Registros.RegistroTransminiones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 366px;
        }
        .auto-style4 {
            margin-left: 229px;
        }
        .auto-style5 {
            width: 366px;
            height: 83px;
        }
        .auto-style6 {
            height: 83px;
        }
        .auto-style7 {
            width: 73px;
            height: 83px;
        }
        .auto-style8 {
            width: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="TransmisionesForm" runat="server" class="auto-style4">

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    <table style="width:100%;">
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style5">
                <br />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <label>Id</label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="BuscarIdTextBox" runat="server" placeholder="Id" CssClass="form-control" Width="325px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" CssClass="btn btn-info" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <label>Transmision</label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="DescripcionTextBox" CssClass=" form-control" placeholder="Transmision" runat="server" Width="325px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ForeColor="Red" ControlToValidate="DescripcionTextBox" ValidationGroup="GuardarButton" Display="Dynamic" runat="server" ErrorMessage="Digite la descripcion"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass="btn" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" CssClass="btn btn-success" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="btn btn-danger" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
