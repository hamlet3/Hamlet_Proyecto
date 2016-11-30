<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsultaPaquetes.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaPaquetes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ConsultaPaquetesForm" runat="server">
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
                <asp:RequiredFieldValidator ID="MarcasDropDownListRequiredFieldValidator1" runat="server" InitialValue="Seleccione-" ForeColor="Red" ControlToValidate="FiltroDropDownList" ValidationGroup="Buscar" ErrorMessage="Seleccione  el tipo de busqueda"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
    

                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="FiltroDropDownList" runat="server" CssClass="form-control" Width="200px">
                        <asp:ListItem>Seleccione-</asp:ListItem>
                        <asp:ListItem Value="PaqueteId">Id</asp:ListItem>
                        <asp:ListItem>Descripcion</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
    

    <asp:TextBox ID="FiltroTextbox" runat="server" CssClass="auto-style6" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="FiltroButton" runat="server" CssClass="btn btn-info" OnClick="FiltroButton_Click" Text="Buscar" ValidationGroup="Buscar" />
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
                    <asp:ListView ID="PaquetesListView" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("PaqueteId") %></td>
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
