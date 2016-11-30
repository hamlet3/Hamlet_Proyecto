<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="DefaultOut.aspx.cs" Inherits="AutoReyes.WebForm.DefaultOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <img src="../img/carros%20de%20lujo%20(2).jpg" class="glyphicon-text-background" />
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <img src="../img/mitsubishi_lancer.jpg" width="3000" />
                <div class="carousel-caption">
                   
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <img src="../img/jeep.jpg" class="glyphicon-text-background" />
                <div class="carousel-caption">
                    
                </div>
            </div>
        </div>   

            <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
</asp:Content>
