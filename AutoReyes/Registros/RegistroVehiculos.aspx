<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroVehiculos.aspx.cs" Inherits="AutoReyes.Registros.RegistoVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 528px;
            left: 341px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 434px;
            left: 343px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 485px;
            left: 341px;
            z-index: 1;
        }
        .auto-style6 {
            width: 240px;
            height: 22px;
            position: absolute;
            top: 459px;
            left: 342px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 528px;
            left: 420px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 166px;
            left: 347px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 195px;
            left: 346px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 224px;
            left: 346px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 255px;
            left: 346px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 287px;
            left: 345px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 318px;
            left: 345px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 349px;
            left: 345px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 379px;
            left: 344px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 408px;
            left: 344px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 382px;
            left: 544px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 351px;
            left: 552px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 168px;
            left: 452px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 194px;
            left: 451px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 224px;
            left: 449px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 255px;
            left: 453px;
            z-index: 1;
            height: 18px;
        }
        .auto-style31 {
            position: absolute;
            top: 288px;
            left: 450px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 319px;
            left: 452px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 381px;
            left: 543px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 352px;
            left: 551px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 414px;
            left: 550px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 413px;
            left: 545px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 407px;
            left: 261px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 380px;
            left: 261px;
            z-index: 1;
        }
        .auto-style39 {
            position: absolute;
            top: 353px;
            left: 261px;
            z-index: 1;
        }
        .auto-style40 {
            position: absolute;
            top: 166px;
            left: 262px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 319px;
            left: 261px;
            z-index: 1;
            height: 20px;
        }
        .auto-style44 {
            position: absolute;
            top: -65px;
            left: 0px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 260px;
            left: 261px;
            z-index: 1;
        }
        .auto-style47 {
            position: absolute;
            top: -61px;
            left: 0px;
            z-index: 1;
        }
        .auto-style48 {
            position: absolute;
            top: 198px;
            left: 261px;
            z-index: 1;
        }
    </style>
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
                <asp:DropDownList ID="MarcaDropDownList" runat="server" Width="100px" OnSelectedIndexChanged="MarcaDropDownList_SelectedIndexChanged" AutoPostBack="True" CssClass="auto-style8 form-control">
                    <asp:ListItem>Elige Marca</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="MarcaRequiredFieldValidator" InitialValue="Elige Marca" ForeColor="Red" ControlToValidate="MarcaDropDownList" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione la marca" CssClass="auto-style27"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ModeloDropDownList" runat="server" Width="100px" CssClass="auto-style9 form-control">
                    <asp:ListItem>Elige Modelo</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ModeloRequiredFieldValidator" InitialValue="Elige Modelo" ForeColor="Red" ValidationGroup="GuardarButton" ControlToValidate="ModeloDropDownList" runat="server" ErrorMessage="Seleccione el modelo" CssClass="auto-style28"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:DropDownList ID="MotorDropDownList" runat="server" Width="100px" CssClass="auto-style10 form-control">
                    <asp:ListItem>Elige Motor</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="MotorRequiredFieldValidator" InitialValue="Elige Motor" ForeColor="Red" ControlToValidate="MotorDropDownList" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione el tipo de motor" CssClass="auto-style29"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:DropDownList ID="ColorDropDownList" runat="server" Width ="100px" CssClass="auto-style11 form-control">
                    <asp:ListItem>Elige Color</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ColorRequiredFieldValidator" ForeColor="Red" InitialValue="Elige Color" ValidationGroup="GuardarButton" ControlToValidate="ColorDropDownList" runat="server" ErrorMessage="Seleccione el color" CssClass="auto-style30"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:DropDownList ID="TransmisionDropDownList" runat="server" Width="100px" CssClass="auto-style12 form-control">
                    <asp:ListItem>Elige Transmision</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="TransmisionRequiredFieldValidator" InitialValue="Elige Transmision" ControlToValidate="TransmisionDropDownList" ForeColor="Red" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Seleccione la transmision" CssClass="auto-style31"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:DropDownList ID="EstadoDropDownList" runat="server" Width="100px" CssClass="auto-style13 form-control">
                    <asp:ListItem>Elige Estado</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="EstadoRequiredFieldValidator" runat="server" InitialValue="Elige Estado" ControlToValidate="EstadoDropDownList" ForeColor="Red" ValidationGroup="GuardarButton" ErrorMessage="Selecione el estado" CssClass="auto-style32"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="AñoTextBox" runat="server" Width="200px" CssClass="auto-style14 form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AñoRequiredFieldValidator" ForeColor="Red" ControlToValidate="AñoTextBox" Display="Dynamic" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el Año" CssClass="auto-style26"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="AñoRangeValidator" MaximumValue="2017" MinimumValue="1900" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="AñoTextBox" ErrorMessage="El año debe ser entre 1900 y 2017" CssClass="auto-style34"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="KilometrajeTextBox" runat="server" Width="200px" CssClass="auto-style15 form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="KilometrajeRequiredFieldValidator" ForeColor="Red"  ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="KilometrajeTextBox" runat="server" ErrorMessage="Digite el kilometraje" CssClass="auto-style33"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="KilometrajeRangeValidator" runat="server" Display="Dynamic" ValidationGroup="GuardarButton" ControlToValidate="KilometrajeTextBox" ForeColor="Red" MaximumValue="999999" MinimumValue="0" Type="Double" ErrorMessage="El valor debe ser mayor o igual a 0" CssClass="auto-style25"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td><asp:TextBox ID="PrecioTextBox" runat="server" Width="200px" CssClass="auto-style16 form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PrecioRequiredFieldValidator" ForeColor ="Red" Display="Dynamic" ControlToValidate="PrecioTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el precio" CssClass="auto-style35"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="PrecioRangeValidator" ForeColor="Red" Type="Double" Display="Dynamic" ValidationGroup="GuardarButton" ControlToValidate="PrecioTextBox" MaximumValue="99999999" MinimumValue="1" runat="server" ErrorMessage="El valor deba ser mayor que 0" CssClass="auto-style36"></asp:RangeValidator>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" CssClass="auto-style3 btn btn-info" />
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" CssClass="auto-style7 btn btn-info" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="FotoFileUpload" runat="server" CssClass="auto-style6" />
                <asp:RequiredFieldValidator ID="FotoRequiredFieldValidator" ForeColor="Red" ValidationGroup="AgregarButton" ControlToValidate="FotoFileUpload" runat="server" ErrorMessage="Selecione una Foto" CssClass="auto-style4"></asp:RequiredFieldValidator>
                <asp:Button ID="AgregarButton" ValidationGroup="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" CssClass="auto-style5 btn btn-default" />
                <label class="auto-style40" for="NombreUsuarioTextBox">
                Marca
                </label>
                <br />
                <label class="auto-style48" for="NombreUsuarioTextBox">
                Modelo</label><br />
                <br />
                <label class="auto-style39" for="NombreUsuarioTextBox">
                Año
                <label class="auto-style44" for="NombreUsuarioTextBox">
                Trasmision<label class="auto-style47" for="NombreUsuarioTextBox">Motor</label></label></label><br />
                <br />
                <label class="auto-style43" for="NombreUsuarioTextBox">
                Estado</label><br />
                <label class="auto-style38" for="NombreUsuarioTextBox">
                Kilometraje</label><br />
                <label class="auto-style37" for="NombreUsuarioTextBox">
                Precio</label><br />
                <label class="auto-style46" for="NombreUsuarioTextBox">
                Color</label><br />
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
