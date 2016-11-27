<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ComprarPaquete.aspx.cs" Inherits="AutoReyes.WebForm.ComprarPaquete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ComprarPaqueteForm" runat="server">
        

        <br />
        <br />
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <h1>Elige tu plan</h1>
                        <asp:DataList ID="PaquetesDataList" runat="server" OnSelectedIndexChanged="PaquetesDataList_SelectedIndexChanged">
                             <ItemTemplate>
                         <br />
                           <div style="background: black; width:600px; height:1px"></div>
                         <br />
                         
                        <table>
                            <tr style="width:100px">
                                <td>
                                    <asp:Button ID="PaqueteRepeatButton" runat="server" CommandName="Select" BorderColor="Transparent" Height="80px" CssClass="btn-success" Text="Comprar" />
                                </td>
                                <td style="width:100px">
                                    <table>
                                        <tr>
                                    
                                            <td>
                                                <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" BackColor="Transparent" Enabled="false" TextMode="MultiLine" Width="500px" Height="80px" runat="server" Text='<%#Eval("Descripcion") %>'></asp:TextBox></td>   
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                       
                    </ItemTemplate>
                        </asp:DataList>
                
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
       

 

    </form>
</asp:Content>
