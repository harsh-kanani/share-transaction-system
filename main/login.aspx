<%@ Page Title="" Language="VB" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="main_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Login
           <i class="fa fa-sign-in"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>


	

         



<section id="services">
 

<div class="container" >
	 <div class="row">						
           <div class="section-header">
                 <h2>Login
                 <i class="fa fa-signin"></i></h2>
           </div>
       </div>
	<div class="row" >
    
								<div class="col-md-4">
								</div>
									<div class="col-md-4">
                                    
                                       <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                <asp:TextBox ID="txtuname" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
											</div>
                                            </div>
                                        </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">

												 <asp:TextBox ID="txtpwd" class="form-control" runat="server" 
                                                     placeholder="Password" TextMode="Password"></asp:TextBox>
											</div>
                                            </div>
                                    </div>
                                    
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Login"  class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Cancel"  class="btn btn-outline-danger" ></asp:Button>
                                                <br />
                                            </div>
                                            <div style="margin-bottom:25px">
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                      <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                    <asp:LinkButton ID="fpw" runat="server">Forgot Password ?</asp:LinkButton>
    											</div>
                                            </div>
                                    </div>
                                    </div>
                                  
                                    </div>
								<div class="col-md-4">

								</div>
							</div>
           

 </section>
</asp:Content>

