<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiCuentaUsuario.aspx.cs" Inherits="AutoReyes.WebForm.MiCuentaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 285px;
        }
        .auto-style3 {
            width: 116px;
        }
        .auto-style4 {
            font-weight: bold;
            width: 116px;
        }
        .auto-style5 {
            font-weight: bold;
            width: 70px;
        }
        .auto-style6 {
            width: 70px;
        }
        .auto-style7 {
            height: 18px;
        }
        .auto-style8 {
            width: 113px;
        }
        .auto-style9 {
            height: 18px;
            width: 113px;
        }
        .auto-style10 {
            width: 113px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="width: 100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Escriba su nombre" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Solo se acceptan letras" ForeColor="Red" Display="Dynamic" ValidationExpression="^[A-Z a-z]*$" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Escriba su direccion" ForeColor="Red" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="No se acceptan caracteres especiales" ForeColor="Red" ValidationGroup="Guardar" ValidationExpression="[0-9 A-Za-z]+$"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><label>Nombre</label>&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="NombreTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">Direccion</td>
            <td>
                <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre Usuario</td>
            <td class="auto-style2">
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Escriba su nombre de usuario" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="No se acceptan caracteres especiales" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar" ValidationExpression="[0-9 A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Escriba su email" ForeColor="Red" Display="Dynamic" ValidationGroup="Guardar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Formato erroneo" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style10">
                    Telefono</td>
                <td>
                       <asp:GridView ID="TelefonoGridView" runat="server" AutoGenerateColumns="False">
                           <Columns>
                               <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                               <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                           </Columns>
                       </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style7">
                <asp:TextBox ID="TelefonoTextBox" runat="server" Width="150px"></asp:TextBox>
                    <asp:DropDownList ID="TipoTelefonoDropDownList" runat="server" Width="120px">
                        <asp:ListItem>Selecione-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="A" />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinkButton ID="EditarLinkButton" runat="server" OnClick="EditarLinkButton_Click" ValidationGroup="Guardar">Editar</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarButton_Click" Text="Button" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    <br />
    
    </form>
    
</asp:Content>
