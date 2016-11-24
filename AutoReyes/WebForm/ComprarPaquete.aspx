<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ComprarPaquete.aspx.cs" Inherits="AutoReyes.WebForm.ComprarPaquete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ComprarPaqueteForm" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Repeater ID="PaquetesRepeater" runat="server">
            <ItemTemplate>
                <table>
                    <tr style="width:100px">
                        
                        <td style="width:100px">
                            <table>
                                <tr>
                                    <td>Descripcion</td>
                                    <td><asp:Label runat="server" ID="DescripcionLaber" Text='<%#Eval("Descripcion") %>'></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>

 

    </form>
</asp:Content>
