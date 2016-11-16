﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="AutoReyes.RegistroUsuarios" %>
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
            margin-left: 47px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <table style="width:100%;">
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

    <table style="width:100%;">
        <tr>
            <td>
                            <asp:TextBox ID="BuscarIdTextBox" runat="server" Width="60px"></asp:TextBox>
                            <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarBtn_Click" Text="Buscar" />
                             <asp:DropDownList ID="PrioridadDropDownList" runat="server">
                                <asp:ListItem>Prioridad</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>

                            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>
                            </td>
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
        </tr>
        <tr>
            <td>
                            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="auto-style6" OnTextChanged="TextBox1_TextChanged" Width="210px"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                            <asp:Label ID="Label4" runat="server" Text="Nombre Completo"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:TextBox ID="NombreTextBox" runat="server" CssClass="auto-style10" Width="210px"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                            <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="auto-style7" OnTextChanged="TextBox5_TextChanged" Width="210px"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:TextBox ID="ContraseñaTextBox" runat="server" CssClass="auto-style6" Width="210px"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                            <asp:Label ID="Label7" runat="server" Text="Confirmar Contraseña"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:TextBox ID="ConfContraseñaTextBox" runat="server" CssClass="auto-style7" Width="210px"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="auto-style9" Width="210px"></asp:TextBox>
                    
                        
                            
                    
                        
                        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Numero Telefonico</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TelefonoTextBox" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DescripcionDropDownList" runat="server" OnSelectedIndexChanged="DescripcionDDL_SelectedIndexChanged">
                    <asp:ListItem>Selecionar. . .</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="AgregarButton" runat="server" CommandName="Agregar" Text="Agregar" OnClick="AgregarButton_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" />
                <asp:Button ID="EliminarButton" runat="server" OnClick="EliminarBtn_Click" Text="Eliminar" Enabled="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

</asp:Content>
