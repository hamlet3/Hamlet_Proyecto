<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RegistroPaquetes.aspx.cs" Inherits="AutoReyes.Registros.ReportePaquetes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 227px;
        }
        .auto-style9 {
        width: 83px;
    }
    .auto-style10 {
        width: 450px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="PaquetesForm" runat="server">
            <br />
 
                <br />
                <br /><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style9">
                            &nbsp;<label>Id</label></td>
                        <td class="auto-style10">
                <asp:TextBox ID="BuscarIdTextBox" runat="server" placeholder="Id" Width="300px" CssClass="form-control"></asp:TextBox>
                            <asp:Button ID="BuscarIdButton" ValidationGroup="BuscarIdTextBox" runat="server" OnClick="BuscarIdBtn_Click" Text="Buscar" CssClass="btn btn-info" style="z-index: 1; position: absolute; top: 199px; left: 611px" />
            
                <asp:CompareValidator ID="BuscarIdCompareValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="El id debe ser un numero" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="BuscarIdTextBox"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="BuscarIdRequiredFieldValidator" runat="server" ControlToValidate="BuscarIdTextBox" Display="Dynamic" ErrorMessage="Digite Id" ForeColor="Red" ValidationGroup="BuscarIdTextBox"></asp:RequiredFieldValidator>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style9">
                            <label>Espacios</label></td>
                        <td class="auto-style10">
                <asp:TextBox ID="EspaciosTextBox" placeholder="Espacios" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EspaciosRequiredFieldValidator1" runat="server" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="EspaciosTextBox" ForeColor="Red" ErrorMessage="Digite la cantidad de espacios"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="EspaciosRangeValidator" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" Display="Dynamic" ControlToValidate="EspaciosTextBox" MaximumValue="30" MinimumValue="1" Type="Integer" ErrorMessage=" El valor debe ser entre 1 y 30"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style9">
                            <label>Costo</label></td>
                        <td class="auto-style10">
                <asp:TextBox ID="CostoTextBox" runat="server" placeholder="Costo" CssClass="form-control" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CostoRequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="GuardarButton" ControlToValidate="CostoTextBox" Display="Dynamic" ErrorMessage="Digite el costo"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="CostoRangeValidator" ValidationGroup="GuardarButton" ForeColor="Red" ControlToValidate="CostoTextBox" runat="server" MaximumValue="9999" MinimumValue="1" Display="Dynamic" Type="Integer" ErrorMessage="El valor debe ser mayor de 0"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style9">
                            <label>Descipcion</label></td>
                        <td class="auto-style10">
                <asp:TextBox ID="DescripcionTextBox" runat="server" placeholder="Descripcion" TextMode="MultiLine" CssClass="form-control" Width="300px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="DescripcionRegularExpressionValidator" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Caracter invalido" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="GuardarButton"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="DescripcionRequiredFieldValidator1" ControlToValidate="DescripcionTextBox" ValidationGroup="GuardarButton" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Digite la descripcion"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">
                <asp:Button ID="NuevoButton" runat="server" OnClick="NuevoBtn_Click" Text="Nuevo" CssClass="btn " />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="GuardarButton" ValidationGroup="GuardarButton" runat="server" OnClick="GuardarBtn_Click" Text="Guardar" CssClass="btn btn-success" style="margin-left: 63" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" runat="server" ValidationGroup="BuscarIdTextBox" OnClick="EliminarBtn_Click" Text="Eliminar" CssClass="btn btn-danger" />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
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
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
