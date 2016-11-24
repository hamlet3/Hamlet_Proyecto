<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="AutoReyes.RegistroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
        height: 38px;
    }
        .auto-style12 {
            width: 289px;
        }
        .auto-style13 {
            height: 38px;
            width: 289px;
        }
        .auto-style18 {
            margin-left: 5px;
        }
        .auto-style19 {
            width: 949px;
        }
        .auto-style20 {
        width: 488px;
    }
    .auto-style21 {
        height: 102px;
    }
    .auto-style22 {
        height: 102px;
        width: 350px;
    }
    .auto-style25 {
        width: 499px;
    }
        .auto-style26 {
            display: block;
            width: 100%;
            height: 34px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #ccc;
            margin-left: 22;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style27 {
            width: 100%;
            margin-left: 141px;
        }
        .auto-style28 {
            width: 100%;
            margin-left: 142px;
        }
        .auto-style29 {
            width: 100%;
            margin-left: 142px;
            margin-right: 87px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="UsuarioForm" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

    <table class="auto-style27">
        <tr>
            <td class="auto-style22">
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="BuscarIdTextBox" runat="server" placeholder="Id" Width="325px" CssClass="form-control"></asp:TextBox>

                        </td>
            <td class="auto-style21">
                            <asp:Button ID="BuscarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="BuscarBtn_Click" Text="Buscar" CssClass="btn btn-info" />
                             </td>
            <td class="auto-style21"></td>
        </tr>
        </table>
    <table class="auto-style27">
        <tr>
            <td class="auto-style20">

                            <label>Nombre de usuario</label></td>
            <td>&nbsp;</td>
            <td>
                            <label>Nombre completo</label></td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="auto-style6 form-control" placeholder="Nombre de usuario" OnTextChanged="TextBox1_TextChanged" Width="325px"></asp:TextBox>
             </td>
            <td>&nbsp;</td>
            <td>
                 <asp:TextBox ID="NombreTextBox" runat="server" CssClass="auto-style10 form-control" placeholder="Nombre completo" Width="325px" OnTextChanged="NombreTextBox_TextChanged"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="NombreUsuarioRequiredFieldValidator" ForeColor="Red" Display="Dynamic" ControlToValidate="NombreUsuarioTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el nombre de usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="NombreUsuarioRegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Caracter invalido" ValidationGroup="GuardarButton" ControlToValidate="NombreUsuarioTextBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$"></asp:RegularExpressionValidator>

             </td>
            <td>&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="NombreRequiredFieldValidator" ForeColor="Red" ControlToValidate="NombreTextBox" ValidationGroup="GuardarButton" Display="Dynamic" runat="server" ErrorMessage="Digite el nombre"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="NombreRegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Caracter invalido" ValidationGroup="GuardarButton" ControlToValidate="NombreTextBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;<label>Contraseña</label></td>
            <td>&nbsp;</td>
            <td>
                            <label>Direccion</label></td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:TextBox ID="ContraseñaTextBox" runat="server" CssClass="auto-style6 form-control" placeholder="Contraseña" Width="325px" OnTextChanged="ContraseñaTextBox_TextChanged"></asp:TextBox>
          </td>
            <td>&nbsp;</td>
            <td>
                 <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="auto-style7 form-control" placeholder="Direccion" OnTextChanged="TextBox5_TextChanged" Width="325px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style20">
                            &nbsp;<asp:RequiredFieldValidator ID="ContraseñaRequiredFieldValidator" ForeColor="Red" ControlToValidate="ContraseñaTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la contraseña"></asp:RequiredFieldValidator>
                            </td>
            <td>&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="DireccionRequiredFieldValidator" ForeColor="Red" ControlToValidate="DireccionTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la direccion"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <table class="auto-style28">
        <tr>
            <td class="auto-style25">
                            <label>Confirmar contraseña</label></td>
            <td>
                            <label>Correo electronico</label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                            &nbsp;<asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server" placeholder="Confirmar contraseña" CssClass="auto-style7 form-control" Width="325px"></asp:TextBox>
                            </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Correro electronico" CssClass="auto-style9 form-control" Width="325px" style="margin-left: 0"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:CompareValidator ID="ConfirmarContraseñaCompareValidator" ForeColor="Red" ControlToValidate="ConfirmarContraseñaTextBox" Display="Dynamic" ControlToCompare="ContraseñaTextBox" Type="String" Operator="Equal" runat="server" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" ControlToValidate="ConfirmarContraseñaTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la contraseña"></asp:RequiredFieldValidator>
                </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Email invalido" ValidationGroup="GuardarButton" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" ForeColor="Red" Display="Dynamic" ControlToValidate="EmailTextBox" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite el Email"></asp:RequiredFieldValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style28">
        <tr>
            <td class="auto-style25">
                            &nbsp;<label>Numero de telefono</label></td>
            <td>
                             <asp:DropDownList ID="PrioridadDropDownList" runat="server" CssClass="form-control" Width="325px">
                                 <asp:ListItem>Prioridad</asp:ListItem>
                                 <asp:ListItem>1</asp:ListItem>
                                 <asp:ListItem>2</asp:ListItem>
                            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="PrioridadRequiredFieldValidator2" ForeColor="Red" InitialValue="Prioridad" ControlToValidate="PrioridadDropDownList" ValidationGroup="GuardarButton" runat="server" ErrorMessage="Digite la prioridad"></asp:RequiredFieldValidator>

                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:TextBox ID="TelefonoTextBox" runat="server" placeholder="Telefono" CssClass="auto-style26" Width="325px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="TelefonoRequiredFieldValidator" ForeColor="Red" ControlToValidate="TelefonoTextBox" ValidationGroup="AgregarButton" runat="server" ErrorMessage="Digite el numero"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                            &nbsp;<asp:DropDownList ID="DescripcionDropDownList" runat="server" OnSelectedIndexChanged="DescripcionDDL_SelectedIndexChanged" CssClass="form-control" Width="325px">
                    <asp:ListItem>Selecionar. . .</asp:ListItem>
                </asp:DropDownList>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style29">
        <tr>
            <td>
                <asp:Button ID="AgregarButton" ValidationGroup="AgregarButton" runat="server" CommandName="Agregar" Text="Agregar" OnClick="AgregarButton_Click" CssClass="btn btn-success" />
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator" runat="server" InitialValue="Tipo de numero" ControlToValidate="DescripcionDropDownList" ForeColor="Red" ValidationGroup="AgregarButton" ErrorMessage="Seleccione el tipo"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            
            <td>
                            &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
               <asp:GridView ID="TelefonoGridVierw" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" Width="431px" CssClass="auto-style18">
                  <Columns>
                      <asp:TemplateField HeaderText="Telefono" SortExpression="Telefono">
                          <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label1" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                           </ItemTemplate>
                           </asp:TemplateField>
                            <asp:TemplateField HeaderText="Descripcion" SortExpression="Descripcion">
                             <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                              </EditItemTemplate>
                            <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                </Columns>
              </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>

    <table class="auto-style28">
        <tr>
            <td class="auto-style19">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass="btn" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="GuardarButton" runat="server" ValidationGroup="GuardarButton" OnClick="GuardarBtn_Click" Text="Guardar" CssClass="btn btn-success" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="btn btn-danger" />
                        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
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
