﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsultaMotores.aspx.cs" Inherits="AutoReyes.Consultas.ConsultaMotores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="ConsultaMotoresForm" runat="server">

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
                <asp:GridView ID="MotoresGridView" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  </form>
</asp:Content>
