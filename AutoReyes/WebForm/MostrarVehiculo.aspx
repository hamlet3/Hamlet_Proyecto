<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MostrarVehiculo.aspx.cs" Inherits="AutoReyes.WebForm.MostrarVehiculo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-left: 206px;
    }
    .auto-style2 {
        width: 81%;
        margin-left: 196px;
        margin-right: 24px;
    }
    .auto-style5 {
        width: 169px;
    }
    .auto-style6 {
        width: 193px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
        </p>
        <p>
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
                        <br />
                        <br />
                        <br />
                        <br />
                     
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            <asp:DataList ID="FotosDataList" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="FotosImage" runat="server" Width="200px" Height="150px" ImageUrl='<%#Eval("Foto") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
            <table class="auto-style2">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style5">
                        <label>Marca:</label><asp:Label ID="MarcaLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <label>Transmision:</label><asp:Label ID="TransmisionLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <label>Año:</label><asp:Label ID="AñoLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style5">
                        <label>Modelo:</label><asp:Label ID="ModeloLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <label>Color:</label><asp:Label ID="ColorLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <label>Kilometraje:</label><asp:Label ID="KilometrajeLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style5">
                        <label>Motor:</label><asp:Label ID="MotorLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <label>Estado:</label><asp:Label ID="EstadoLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <label>Precio:</label><asp:Label ID="PrecioLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            <table class="auto-style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>Telefono:</label><asp:Label ID="TelefonoLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>Email:</label><asp:Label ID="EmailLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</asp:Content>
