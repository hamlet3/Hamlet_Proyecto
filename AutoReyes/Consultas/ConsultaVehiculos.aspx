<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsultaVehiculos.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Vehiculosform" runat="server">

    <table style="width:100%;">
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
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="FiltroTextBox" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                            </td>
                        <td>
                            <asp:Button ID="FiltroButton" runat="server" ValidationGroup="Filtro" OnClick="FiltroButton_Click" Text="buscar" CssClass="btn btn-info" style="margin-left: 0" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:DropDownList ID="FiltroDropDownList" runat="server" CssClass="form form-control" Width="200px">
                                <asp:ListItem>Seleccione-</asp:ListItem>
                                <asp:ListItem Value="Ma.Descripcion">Marca</asp:ListItem>
                                <asp:ListItem Value="M.Descripcion">Modelo</asp:ListItem>
                                <asp:ListItem Value="Mo.Descripcion">Motor</asp:ListItem>
                                <asp:ListItem Value="T.Descripcion">Transmision</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                            <asp:RequiredFieldValidator ID="DropdownListRequiredFieldValidator" runat="server" InitialValue="Seleccione-" ValidationGroup="Filtro" ControlToValidate="FiltroDropDownList" ForeColor="Red" ErrorMessage="seleccione filtro"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:DataList ID="VehiculosDataList" runat="server" CssClass="table table-responsive table-bordered table-hover" OnSelectedIndexChanged="VehiculosDataList_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3">

                                <ItemTemplate>
                                    <br />
                                    <br />
                                    <table>
                                        <tr>
                                            <td style="width:50px">
                                                <asp:Image Width="200px" Height="150px" ID="VehiculoImage" ImageUrl='<%#Eval("Foto") %>' runat="server"/>
                                                <asp:LinkButton ID="IdLinkButton" CommandName="Select" runat="server">Ver</asp:LinkButton>
                                            </td>
                                            <td style="width:50px">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <b>Id:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="VehiculoIdLabel" runat="server" Text='<%#Eval("VehiculoId")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <b>Marca:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="MarcaLabel" runat="server" Text='<%#Eval("Marca")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <b>Modelo:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Modelo")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <b>Estado:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="EstadoLabel" runat="server" Text='<%#Eval("Estado")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <b>Precio:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="PrecioLabel" runat="server" Text='<%#Eval("Precio") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <b>Kilometraje:</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="KilometrajeLabel" runat="server" Text='<%#Eval("Kilometraje") %>'> ></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
