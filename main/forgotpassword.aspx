<%@ Page Title="" Language="VB" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="false" CodeFile="forgotpassword.aspx.vb" Inherits="main_forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <%--  <div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Forgot Password
           <i class="fa fa-sign-in"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

 <section id="services">
<div class="container">
	<div class="row"> 
							<div class="col-md-12">
								<div class="about-logo">
									
								</div> 
							</div>
						</div>
	<div class="row">
    
								<div class="col-md-4">
								</div>
									<div class="col-md-4">
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                <asp:TextBox ID="txtuname" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
											</div>
                                            </div>
                                        </div>
                                   
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="OK"  class="btn btn-success" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Cancel"  class="btn btn-danger" ></asp:Button>
                                                <br />
                                            </div>
                                            <div style="margin-bottom:25px">
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                    </div>
								<div class="col-md-4">

								</div>
							</div>
             </div>
	</div>
    </div>
    </section>
</asp:Content>

