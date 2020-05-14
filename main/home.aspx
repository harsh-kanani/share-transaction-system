﻿<%@ Page Title="" Language="VB" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="main_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<!-- Slider -->
        <div class="banner">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3_agile_banner_text banner1">
								<h3>trade over world's leading stock exchanges</h3>
								<div class="more">
									<a href="single.html" class="button button--isi button--text-thick button--text-upper button--size-s"><span>Learn More</span></a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner2">
								<h3>creating wealth with real estate investment</h3>
								<div class="more">
									<a href="single.html" class="button button--isi button--text-thick button--text-upper button--size-s"><span>Learn More</span></a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner3">
								<p>national pension scheme</p>
								<h3>start today for happy retirement</h3>
								<div class="more">
									<a href="single.html" class="button button--isi button--text-thick button--text-upper button--size-s"><span>Learn More</span></a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner4">
								<h3>open a savings account & enjoy unique benefits</h3>
								<div class="more">
									<a href="single.html" class="button button--isi button--text-thick button--text-upper button--size-s"><span>Learn More</span></a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner5">
								<h4>grow your money with trade market</h4>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				    $(window).load(function () {
				        $('.flexslider').flexslider({
				            animation: "slide",
				            start: function (slider) {
				                $('body').removeClass('loading');
				            }
				        });
				    });
			  </script>
			<!-- //flexSlider -->
	</div>




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <p>Welcome to shareworld</p>  
     
     
 
</asp:Content>

