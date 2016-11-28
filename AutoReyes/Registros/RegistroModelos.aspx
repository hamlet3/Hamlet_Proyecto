<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RegistroModelos.aspx.cs" Inherits="AutoReyes.RegistroModelos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 343px;
        }
        .auto-style6 {
            position: absolute;
            top: 165px;
            left: 604px;
        }
        .auto-style7 {
            position: absolute;
            top: 159px;
            left: 305px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 190px;
            left: 304px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 224px;
            left: 304px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ModelosForm" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style5">
        <label for="ContraseñaTextBox" class="auto-style7">Id</label></td>
                        <td>
                <asp:TextBox ID="BuscarIdTextBox" placeholder="Id" CssClass="form-control" Width="200px" runat="server" OnTextChanged="BuscarIdTextBox_TextChanged"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" Text="Buscar" OnClick="BuscarIdBtn_Click" CssClass="auto-style6 btn btn-info" style="z-index: 1; left: 563px; top: 147px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style5">
        <label for="ContraseñaTextBox" class="auto-style8">Modelo</label></td>
                        <td>
                <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" Width="200px" placeholder="Modelo" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>

                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ForeColor="Red" ControlToValidate="DescripcionTextBox" Display="Dynamic" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el modelo"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="MarcasDropDownList" CssClass="form-control" Width="200px" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="MarcasDropDownListRequiredFieldValidator1" runat="server" InitialValue="Eliga una marca" ForeColor="Red" ControlToValidate="MarcasDropDownList" ValidationGroup="GuardarButton" ErrorMessage="Seleccione una marca"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style5">
        <label for="ContraseñaTextBox" class="auto-style9">Marca</label></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>
                <asp:Button ID="NuevoButton" runat="server" CssClass="btn btn-group" OnClick="Button2_Click" Text="Nuevo" style="z-index: 1; position: absolute; top: 329px; left: 288px" />
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" CssClass="btn btn-success" OnClick="GuardarBtn_Click" Text="Guardar" style="z-index: 1; position: absolute; top: 329px; left: 416px" />
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" CssClass="btn btn-danger" OnClick="EliminarBtn_Click" Text="Eliminar" style="z-index: 1; position: absolute; top: 329px; left: 550px" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
