<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RegistroMotores.aspx.cs" Inherits="AutoReyes.RegistroMotores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            position: relative;
            top: 0px;
            left: 3px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 185px;
            left: 219px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 149px;
            left: 220px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="MotoresForm" runat="server">

    <table style="width:100%;">
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
                
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <label class="auto-style6" for="NombreUsuarioTextBox">
                            Id</label><br />
                        </td>
                        <td>
                <asp:TextBox ID="BuscarIdTextBox" runat="server" OnTextChanged="BuscarIdTxT_TextChanged" placeholder="Id" Width="300px" CssClass="focus form-control"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" CssClass="auto-style4 btn btn-info" style="z-index: 1; position: absolute; top: 141px; left: 589px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <label class="auto-style5" for="NombreUsuarioTextBox">
                            Motor</label><br />
                        </td>
                        <td>
                <asp:TextBox ID="DescripcionTextBox"  runat="server" Width="300px" placeholder="Motor" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ValidationGroup="GuardarButton" ForeColor="Red" ControlToValidate="DescripcionTextBox" Display="Dynamic" runat="server" ErrorMessage="Digite el tipo de motor"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass="btn btn-group" style="z-index: 1; position: absolute; top: 256px; left: 217px" />
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" CssClass="btn btn-success" style="z-index: 1; position: absolute; top: 256px; left: 357px" />
                <asp:Button ID="EliminarButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="btn btn-danger" style="z-index: 1; position: absolute; top: 256px; left: 517px" />
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
