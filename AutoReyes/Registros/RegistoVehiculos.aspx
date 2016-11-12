<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistoVehiculos.aspx.cs" Inherits="AutoReyes.Registros.RegistoVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Marca<asp:DropDownList ID="MarcaDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Marca</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Modelo<asp:DropDownList ID="ModeloDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Modelo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                Motor<asp:DropDownList ID="MotorDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Motor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Color
                <asp:DropDownList ID="ColorDropDownList" runat="server" Width ="100px">
                    <asp:ListItem>Elige Color</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Transmision
                <asp:DropDownList ID="TransmisionDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Transmision</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                Estado
                <asp:DropDownList ID="EstadoDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Estado</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Año<asp:TextBox ID="AñoTextBox" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kilometraje<asp:TextBox ID="KilometrajeTextBox" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>Precio<asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" />
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
</asp:Content>
