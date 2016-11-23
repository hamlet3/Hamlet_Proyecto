<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroEstados.aspx.cs" Inherits="AutoReyes.Registros.RegistroEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 2px;
            left: 51px;
        }
        .auto-style4 {
            width: 942px;
        }
        .auto-style5 {
            width: 941px;
        }
        .auto-style6 {
            width: 664px;
        }
        .auto-style7 {
            width: 941px;
            height: 20px;
        }
        .auto-style8 {
            height: 20px;
        }
        .auto-style9 {
            width: 942px;
            height: 20px;
        }
        .auto-style10 {
            position: absolute;
            top: 2px;
            left: 51px;
            height: 20px;
        }
        .auto-style11 {
            position: absolute;
            top: 243px;
            left: 129px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 207px;
            left: 130px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="EstadosForm" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox" CssClass="auto-style3" style="z-index: 1; position: relative"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <label class="auto-style12" for="NombreUsuarioTextBox">
                            Id</label></td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                        <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" CssClass="btn btn-info" OnClick="BuscarIdButton_Click" Text="Buscar" style="z-index: 1; position: absolute; top: 201px; left: 416px" />
                            <asp:TextBox ID="BuscarIdTextBox" runat="server" placeholder="Id" Width="200px" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6"><asp:TextBox ID="DescripcionTextBox" runat="server" placeholder="Estado" Width="200px" CssClass="form-control"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator" Display="Dynamic" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" ControlToValidate="DescripcionTextBox" ErrorMessage="Digite el estado"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <label class="auto-style11" for="NombreUsuarioTextBox">
                            Estado</label></td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" CssClass="btn btn-group" Text="Nuevo" style="z-index: 1; position: absolute; top: 336px; left: 94px" />
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" CssClass="btn btn-success" OnClick="Button1_Click" Text="Guardar" style="z-index: 1; position: absolute; top: 336px; left: 224px" />
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" CssClass="btn btn-danger" OnClick="EliminarButton_Click" Text="Eliminar" style="z-index: 1; position: absolute; top: 336px; left: 364px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
