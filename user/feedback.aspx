<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="user_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%-- <div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Feedback
           <i class="fa fa-archive"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

   <div class="contact">
<div class="container">
	

        <div class="row">						
           <div class="section-header">
                 <h2>Feedback
                 <i class="fa fa-archive"></i></h2>
           </div>
       </div>
	<div class="row">
   
								<div class="col-md-3">
								</div>
									<div class="col-md-6">
                                        <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">			
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                   <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Feedback For</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtfbfor" class="form-control" runat="server" placeholder="Enter Feedback For" MaxLength="50"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Feedback For" ForeColor="#CC0000" ControlToValidate="txtfbfor" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                                </div>  
                                                
											</div>
                                            </div>
                                        </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                      <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Details</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                       <asp:TextBox ID="txtdetails" class="form-control" runat="server" 
                                                     placeholder="Enter Details" Rows="5" TextMode="MultiLine" MaxLength="49"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Detail" ForeColor="#CC0000" ControlToValidate="txtdetails" Display="Dynamic"></asp:RequiredFieldValidator>
                                                     
												</div>
                                                </div>  
                                                       
												 
											</div>
                                            </div>
                                    </div>

                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">

												    <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Rating</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                       <asp:DropDownList ID="ddrating" runat="server" class="form-control">
                                                      <asp:ListItem>5</asp:ListItem>
                                                      <asp:ListItem>4</asp:ListItem>
                                                      <asp:ListItem>3</asp:ListItem>
                                                      <asp:ListItem>2</asp:ListItem>
                                                      <asp:ListItem>1</asp:ListItem>
                                                    </asp:DropDownList>
                                                     
												</div>
                                                </div>  
                                                  
											</div>
                                            </div>
                                    </div>
                                   
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Send"  class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger" CausesValidation="False"></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
                                            </div>
									 </div>
                                    </div>
								<div class="col-md-3">

								</div>
							</div>
             </div>
             </div>
	</div>
</asp:Content>

