<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="userhome.aspx.vb" Inherits="user_userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="banner">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3_agile_banner_text banner1">
								<h3>trade over world's leading stock exchanges</h3>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner2">
								<h3>creating wealth with real estate investment</h3>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner3">
								<p>national pension scheme</p>
								<h3>start today for happy retirement</h3>
							</div>
						</li>
						<li>
							<div class="w3_agile_banner_text banner4">
								<h3>open a savings account & enjoy unique benefits</h3>
								
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
    <div class="contact">
<div class="container">
               <div class="row">						
           <div class="section-header">
                 <h2>News <i class="fa fa-inr"></i>
                 </h2>
           </div>
       </div>
	<div class="row">

                <div class="col-md-6">
                     <!--    Context Classes  -->
                    <div class="panel panel-default">
                       
                        <div class="panel-heading">
                           News
                        </div>
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Heading</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr class="success">
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("newsdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("heading") %>'></asp:Label></td>
                                        </tr>
                        </ItemTemplate> 
                        </asp:Repeater> 
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--  end  Context Classes  -->
                </div>
                     <div class="col-md-6">
                                       			                  
                       <div class="panel panel-default">
                       
                        <div class="panel-heading">
                           IPO List
                        </div>
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>IPO Name</th>
                                            <th>Detali</th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("iponame") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("details") %>'></asp:Label></td>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%# eval("appdate") %>'></asp:Label></td>
                                        </tr>
                        </ItemTemplate> 
                        </asp:Repeater> 
                                    </tbody>
                                </table>
                            </div>
               
                    </div>
                                    </div>
                                    </div>
					
							</div>
             </div>

</asp:Content>

 