<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsultaColores.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaColores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 220px;
        }
        .auto-style5 {
            height: 20px;
            width: 220px;
        }
        .auto-style6 {
            display: block;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #ccc;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style7 {
            width: 238px;
        }
        .auto-style8 {
            height: 20px;
            width: 238px;
        }
        .auto-style9 {
            width: 100%;
            margin-left: 194px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="FiltroDropDownList" runat="server" CssClass="form-control" Width="200px">
                        <asp:ListItem>Seleccione-</asp:ListItem>
                        <asp:ListItem Value="ColorId">Id</asp:ListItem>
                        <asp:ListItem>Descripcion</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
    

    <asp:TextBox ID="FiltroTextbox" runat="server" CssClass="auto-style6" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="FiltroButton" runat="server" CssClass="btn btn-info" OnClick="FiltroButton_Click" Text="Buscar" ValidationGroup="Buscar" />
                </td>
                <td>
                    <asp:Button ID="ImprimirButton" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Imprimir" />
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
                    <asp:ListView ID="ColoresListView" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("ColorId") %></td>
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
