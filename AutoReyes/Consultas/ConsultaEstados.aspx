<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsultaEstados.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaEstados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ConsultaEstadosForm" runat="server">
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
                        <asp:ListItem Value="EstadoId">Id</asp:ListItem>
                        <asp:ListItem>Descripcion</asp:ListItem>
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
                         <th>Descripcion</th>
                     </tr>
                 </thead>
                <tbody>
                    <asp:ListView ID="EstadosListView" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("EstadoId") %></td>
                                <td><%#Eval("Descripcion") %></td>
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
