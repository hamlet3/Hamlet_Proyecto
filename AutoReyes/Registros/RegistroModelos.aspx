<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroModelos.aspx.cs" Inherits="AutoReyes.RegistroModelos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="BuscarIdTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" Text="Buscar" OnClick="BuscarIdBtn_Click" />
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Modelo"></asp:Label>
                <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ForeColor="Red" ControlToValidate="DescripcionTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el modelo"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" Text="Marca"></asp:Label>
                <asp:DropDownList ID="MarcasDropDownList" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="MarcasDropDownListRequiredFieldValidator1" runat="server" InitialValue="Eliga una marca" ForeColor="Red" ControlToValidate="MarcasDropDownList" ValidationGroup="GuardarButton" ErrorMessage="Seleccione una marca"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="Button2_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
