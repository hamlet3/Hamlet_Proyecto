<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="AutoReyes.RegistroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 466px
        }
    .auto-style5 {
        height: 38px;
    }
        .auto-style11 {
            width: 92%;
            height: 344px;
        }
        .auto-style12 {
            width: 811px;
        }
        .auto-style13 {
            height: 38px;
            width: 811px;
        }
        .auto-style14 {
            width: 195px
        }
        .auto-style15 {
            width: 466px;
            height: 226px;
        }
        .auto-style16 {
            width: 195px;
            height: 226px;
        }
        .auto-style17 {
            height: 226px;
        }
        .auto-style18 {
            margin-left: 47px;
        }
        .auto-style19 {
            width: 466px;
            height: 48px;
        }
        .auto-style20 {
            width: 195px;
            height: 48px;
        }
        .auto-style21 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <table style="width:100%;">
        <tr>
            <td class="auto-style12">
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label9" runat="server" Text="Id"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <asp:TextBox ID="BuscarIdTextBox" runat="server" Width="60px"></asp:TextBox>
                            <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarBtn_Click" Text="Buscar" />
                             <asp:DropDownList ID="PrioridadDropDownList" runat="server">
                                <asp:ListItem>Prioridad</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style16">

                            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>
                            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="auto-style6" OnTextChanged="TextBox1_TextChanged" Width="210px"></asp:TextBox>
                            <asp:Label ID="Label4" runat="server" Text="Nombre Completo"></asp:Label>
                            <asp:TextBox ID="NombreTextBox" runat="server" CssClass="auto-style10" Width="210px"></asp:TextBox>
                            <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
                            <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="auto-style7" OnTextChanged="TextBox5_TextChanged" Width="210px"></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
                            <asp:TextBox ID="ContraseñaTextBox" runat="server" CssClass="auto-style6" Width="210px"></asp:TextBox>
                            <asp:Label ID="Label7" runat="server" Text="Confirmar Contraseña"></asp:Label>
                            <asp:TextBox ID="ConfContraseñaTextBox" runat="server" CssClass="auto-style7" Width="210px"></asp:TextBox>
                            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="auto-style9" Width="210px"></asp:TextBox>
                    
                        
                            
                    
                        
                        <td class="auto-style17">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:GridView ID="TelefonoGridVierw" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" OnRowCommand="GvTelefono_RowCommand" ShowFooter="True" Width="431px" CssClass="auto-style18">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Telefono" SortExpression="Telefono">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TelefonoTextBox" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Descripcion" SortExpression="Descripcion">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="DescripcionDropDownList" runat="server" OnSelectedIndexChanged="DescripcionDDL_SelectedIndexChanged">
                                                    <asp:ListItem>Selecionar. . .</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Button ID="AgregarButton" runat="server" CommandName="Agregar" Text="Agregar" />
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style14">
                                &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" />
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

</asp:Content>
