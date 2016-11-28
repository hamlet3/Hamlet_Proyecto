<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RegistroColores.aspx.cs" Inherits="AutoReyes.RegistroColores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 143px;
        }
        .auto-style6 {
            width: 100%;
            margin-left: 129px;
        }
        .auto-style7 {
            width: 339px;
        }
        .auto-style8 {
            width: 143px;
            height: 20px;
        }
        .auto-style9 {
            width: 339px;
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ColoresForm" runat="server">


       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        

        <table class="auto-style6">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" ValidationGroup="BuscarIdTextBox" ForeColor="Red" Display="Dynamic" ControlToValidate="BuscarIdTextBox" runat="server" ErrorMessage="Digite Id"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ValidationGroup="BuscarIdTextBox" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <label>Id</label></td>
                <td class="auto-style7">
                <asp:TextBox ID="BuscarIdTextBox" runat="server" CssClass=" form-control" style="right: -307px; margin-left: 67;" Width="300px"></asp:TextBox>
                </td>
                <td>
                <asp:Button ID="BuscarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="BuscarBtn_Click" Text="Buscar" CssClass="btn btn-info" style="margin-left: 164" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="DescripcionTextBox" runat="server" ErrorMessage="Digite el color" ValidationGroup="GuardarButton"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;<asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass=" btn" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" ValidationGroup="GuardarButton" CssClass=" btn btn-success" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox"  OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="btn btn-danger" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
