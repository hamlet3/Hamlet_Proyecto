<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario2.aspx.cs" Inherits="AutoReyes.Registros.RegistroUsuario2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        margin-left: 281px;
    }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Usuario2Form" runat="server" class="auto-style3">

        <br />
        <br />
        <br />
        <br />
        <br />

    <table style="width:100%;">
        <tr>
            <td>
                <label>
                Nombre de usuario</label></td>
            
            <td>
                <label>
                Nombre completo</label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">            
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" placeholder="Nombre de usuario" CssClass="form-control" Width="325px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="NombreUsuarioRequiredFieldValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="NombreUsuarioTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el nombre de usuario"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="NombreUsuarioRegularExpressionValidator" runat="server" ControlToValidate="NombreUsuarioTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreCompletoTextBox" runat="server" placeholder="Nombre completo" CssClass="form-control" Width="325px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="NombreRegularExpressionValidator" runat="server" Display="Dynamic" ErrorMessage="Caracter invalido" ValidationGroup="GuardarButton" ControlToValidate="NombreCompletoTextBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="NombreCompletoRequiredFieldValidator" ForeColor="Red" Display="Dynamic" ControlToValidate="NombreCompletoTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el nombre" Width="325px"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            
            <td>
                <label>
                Contraseña</label></td>
            <td>
                <label>
                Direccion</label></td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TextBox ID="ContraseñaTextBox" runat="server" TextMode="Password" placeholder="Contraseña" CssClass="form-control" Width="325px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="DireccionTextBox" runat="server" placeholder="Direccion" CssClass="form-control" Width="325px"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="ContraseñaRequiredFieldValidator" ForeColor="Red" ControlToValidate="ContraseñaTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la contraseña"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DireccionRequiredFieldValidator" ForeColor="Red" ControlToValidate="DireccionTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la direccion"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <label>
                Confirmar contraseña</label></td>
            <td>
                <label>
                Correo electronico</label></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server" placeholder="Confirmar contraseña" TextMode="Password" CssClass="form-control" Width="325px"></asp:TextBox>
                </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Correo electronico" CssClass="form-control" Width="325px"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CompareValidator ID="ConfirmarContraseñaCompareValidator" ForeColor="Red" ControlToValidate="ConfirmarContraseñaTextBox" Display="Dynamic" ControlToCompare="ContraseñaTextBox" Type="String" Operator="Equal" runat="server" ValidationGroup="GuardarButton" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="ConfirmarContraseñaRequiredFieldValidator" ForeColor="Red" ControlToValidate="ConfirmarContraseñaTextBox" Display="Dynamic" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la contraseña" Width="325px"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" ForeColor="Red" ControlToValidate="EmailTextBox" Display="Dynamic" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el Email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <label>
                Numero de telefono</label></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TextBox ID="TelefonoTextBox" runat="server" placeholder="Telefono" CssClass="form-control" Width="325px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DescripcionDropDownList" runat="server" CssClass="form-control" Width="325px">
                </asp:DropDownList>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="AgregarButton" ValidationGroup="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" CssClass="btn btn-success" />
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator" runat="server" InitialValue="Tipo de numero" ControlToValidate="DescripcionDropDownList" ForeColor="Red" ValidationGroup="AgregarButton" ErrorMessage="Seleccione el tipo"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="TelefonoRequiredFieldValidator" ForeColor="Red" ControlToValidate="TelefonoTextBox" ValidationGroup="AgregarButton" runat="server" ErrorMessage="Digite el numero"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:GridView ID="TelefonoGridVierw" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoButton_Click" Text="Nuevo" CssClass="btn" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" CssClass="btn btn-success" />
                &nbsp;&nbsp;
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
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
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
