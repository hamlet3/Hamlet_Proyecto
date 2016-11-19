<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsultaColores.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaColores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {
                var FiltrarTextbox = '#' + '<%=FiltrarTextbox.ClientID %>';
                var grillajedis = '#' + 'IdTable';
                $(FiltrarTextbox).quicksearch(grillajedis + ' tbody tr');
            });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="FiltrarTextbox" runat="server"></asp:TextBox>
    <div>
        <table id="IdTable" border="1">
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
    </div>
 </asp:Content>
