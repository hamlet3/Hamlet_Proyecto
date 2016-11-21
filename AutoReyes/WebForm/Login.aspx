<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutoReyes.Loging.Loging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 291px;
            left: 221px;
            z-index: 1;
        }
        .auto-style3 {
            width: 130px;
            height: 66px;
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .auto-style4 {
            position: absolute;
            top: 322px;
            left: 255px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 261px;
            left: 221px;
            z-index: 1;
            width: 128px;
        }
        .auto-style8 {
            position: absolute;
            top: 270px;
            left: 77px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 304px;
            left: 77px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="LoginForm" runat="server">

        <nav class="navbar navbar-default ">

    <table class="auto-style3 form-group" style="z-index: 1">
        <tr>
            <td>uario</td>
            <td><asp:TextBox ID="NombreUsuarioTextBox" placeholder="Usuario"  Width="200px" runat="server" CssClass="auto-style7 form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="ContraseñaTextBox" Width="200px" placeholder="Contraseña" runat="server" CssClass="auto-style2 form-control" style="left: 222px; top: 298px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="LoginButton" runat="server" Text="Iniciar" OnClick="LoginButton_Click" CssClass="auto-style4 btn btn-info" style="left: 255px; top: 333px" />
            </td>
        </tr>
    </table>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <label for="ContraseñaTextBox" class="auto-style8">Contraseña</label>
        <br />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <label for="NombreUsuarioTextBox" class="auto-style9">Nombre de usuario</label><br />
        <br />
        <br />

    </form>



</asp:Content>
