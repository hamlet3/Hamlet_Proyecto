<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutoReyes.Loging.Loging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 48px;
    }
    .auto-style2 {
        height: 48px;
        width: 149px;
    }
    .auto-style3 {
        width: 149px;
    }
    .auto-style4 {
        width: 100%;
        margin-left: 343px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="LoginForm" runat="server">

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
        <br />
        <br />
        <br />
        <br />

        </nav>

        &nbsp;<br />

        <br />

        <table class="auto-style4">
            <tr>
                <td class="auto-style2">

        <label for="NombreUsuarioTextBox">Nombre de usuario</label></td>
                <td class="auto-style1"><asp:TextBox ID="NombreUsuarioTextBox" placeholder="Usuario"  Width="200px" runat="server" CssClass=" form-control" style="left: 221px; top: 261px"></asp:TextBox></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">

        <label for="ContraseñaTextBox">Contraseña</label></td>
                <td><asp:TextBox ID="ContraseñaTextBox" Width="200px" placeholder="Contraseña" runat="server" CssClass="form-control" style="left: 222px; top: 298px" TextMode="Password"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="LoginButton" runat="server" Text="Iniciar" OnClick="LoginButton_Click" CssClass="btn btn-info" style="left: 255px; top: 333px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </form>



</asp:Content>
