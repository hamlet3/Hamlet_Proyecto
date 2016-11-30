<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="AutoReyes.ConsultaUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style4 {
            width: 285px;
        }
        .auto-style5 {
            width: 355px;
        }
        .auto-style6 {
            width: 102px;
        }
        .auto-style7 {
            width: 100%;
            margin-left: 213px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 355px;
            height: 26px;
        }
        .auto-style10 {
            width: 285px;
            height: 26px;
        }
        .auto-style11 {
            width: 102px;
            height: 26px;
        }
        .auto-style12 {
            width: 210px;
        }
        .auto-style13 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id ="UsuariosForms" runat="server">

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <table class="auto-style9">
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="FiltroDropDownList" runat="server" CssClass="form-control" Width="200px">
                        <asp:ListItem>Seleccione-</asp:ListItem>
                        <asp:ListItem Value="U.UsuarioId">Id</asp:ListItem>
                        <asp:ListItem>NombreUsuario</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
    

    <asp:TextBox ID="FiltroTextbox" runat="server" CssClass="auto-style6" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="FiltroButton" runat="server" CssClass="btn btn-info" OnClick="FiltroButton_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">
            <table id="IdTable" border="1" class="auto-style10">
                <thead>
                      <tr>
                         <th>id</th>
                         <th>Nombre de usuario</th>
                          <th>Nombre</th>
                         <th>Direccion</th>
                          <th>Prioridad</th>
                     </tr>
                 </thead>
                <tbody>
                    <asp:ListView ID="UsuariosListView" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Usuario") %></td>
                                <td><%#Eval("NombreUsuario") %></td>
                                <td><%#Eval("Nombres") %></td>
                                <td><%#Eval("Direccion") %></td>
                                <td><%#Eval("Prioridad") %></td>                               

                            </tr> 
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
       
    

        <div>
        </div>
    </table>
    </form>
</asp:Content>
