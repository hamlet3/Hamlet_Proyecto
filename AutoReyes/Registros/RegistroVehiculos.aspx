<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroVehiculos.aspx.cs" Inherits="AutoReyes.Registros.RegistoVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Marca<asp:DropDownList ID="MarcaDropDownList" runat="server" Width="100px" OnSelectedIndexChanged="MarcaDropDownList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Elige Marca</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="MarcaRequiredFieldValidator" InitialValue="Elige Marca" ForeColor="Red" ControlToValidate="MarcaDropDownList" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione la marca"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Modelo<asp:DropDownList ID="ModeloDropDownList" runat="server" Width="100px">
                    <asp:ListItem>Elige Modelo</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ModeloRequiredFieldValidator" InitialValue="Elige Modelo" ForeColor="Red" ValidationGroup="GuardarButton" ControlToValidate="ModeloDropDownList" runat="server" ErrorMessage="Seleccione el modelo"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="MotorRequiredFieldValidator" InitialValue="Elige Motor" ForeColor="Red" ControlToValidate="MotorDropDownList" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione el tipo de motor"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="ColorRequiredFieldValidator" ForeColor="Red" InitialValue="Elige Color" ValidationGroup="GuardarButton" ControlToValidate="ColorDropDownList" runat="server" ErrorMessage="Seleccione el color"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="TransmisionRequiredFieldValidator" InitialValue="Elige Transmision" ControlToValidate="TransmisionDropDownList" ForeColor="Red" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione la transmision"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="EstadoRequiredFieldValidator" runat="server" InitialValue="Elige Estado" ControlToValidate="EstadoDropDownList" ForeColor="Red" ValidationGroup="GuardarButton" ErrorMessage="Selecione el estado"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Año<asp:TextBox ID="AñoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AñoRequiredFieldValidator" ForeColor="Red" ControlToValidate="AñoTextBox" Display="Dynamic" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el Año"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="AñoRangeValidator" MaximumValue="2017" MinimumValue="1900" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="AñoTextBox" ErrorMessage="El año debe ser entre 1900 y 2017"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kilometraje<asp:TextBox ID="KilometrajeTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="KilometrajeRequiredFieldValidator" ForeColor="Red"  ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="KilometrajeTextBox" runat="server" ErrorMessage="Digite el kilometraje"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="KilometrajeRangeValidator" runat="server" Display="Dynamic" ValidationGroup="GuardarButton" ControlToValidate="KilometrajeTextBox" ForeColor="Red" MaximumValue="999999" MinimumValue="0" Type="Double" ErrorMessage="El valor debe ser mayor o igual a 0"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td>Precio<asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PrecioRequiredFieldValidator" ForeColor ="Red" Display="Dynamic" ControlToValidate="PrecioTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el precio"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="PrecioRangeValidator" ForeColor="Red" Type="Double" Display="Dynamic" ValidationGroup="GuardarButton" ControlToValidate="PrecioTextBox" MaximumValue="99999999" MinimumValue="1" runat="server" ErrorMessage="El valor deba ser mayor que 0"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="FotoFileUpload" runat="server" />
                <asp:RequiredFieldValidator ID="FotoRequiredFieldValidator" ForeColor="Red" ValidationGroup="AgregarButton" ControlToValidate="FotoFileUpload" runat="server" ErrorMessage="Selecione una Foto"></asp:RequiredFieldValidator>
                <asp:Button ID="AgregarButton" ValidationGroup="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
