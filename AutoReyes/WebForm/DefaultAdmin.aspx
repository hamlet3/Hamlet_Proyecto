<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DefaultAdmin.aspx.cs" Inherits="AutoReyes.WebForm.Index2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <div class="fill" style="background-image:url('http://1.bp.blogspot.com/-4whQpG9HRuI/VUZ-p3oQ4JI/AAAAAAAAA6c/370wAhe0ceg/s1600/carro-blanco-deportivo-corriendo-3460.jpg One');"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('https://wallpaperscraft.com/image/blue_x6_cool_car_bmw_35i_limber_xdrive_iks6_jeep_87180_1920x1080.jpg Two');"></div>
                <div class="carousel-caption">
                   
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('https://wallpaperscraft.com/image/mitsubishi_lancer_evo_x_tune_96277_1280x720.jpg Three');"></div>
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
