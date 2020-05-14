<%@ Page Title="" Language="VB" MasterPageFile="~/main/mainmaster.master" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="main_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Registration
           <i class="fa fa-users"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>
<section id="services">
 

<div class="container" >
	 <div class="row">						
           <div class="section-header">
                 <h2>Registration
                 <i class="fa fa-signup"></i></h2>
           </div>
       </div>
	<div class="row" >
    
								<div class="col-md-4">
								</div>
									<div class="col-md-4">
                                    
                                       <div class="well well-lg" style="background-color:white; box-shadow:2px 2px 2px 2px;">
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                <label>User Name</label>
                                               <asp:TextBox ID="txtuname" class="form-control" runat="server" placeholder="User Name" MaxLength="20"></asp:TextBox>
                                                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtuname" ForeColor="Red"
                                             ErrorMessage="Enter valid Text" Display="Dynamic" ClientValidationFunction="onlyalpha"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                             ControlToValidate="txtuname" ForeColor="Red" ErrorMessage="Enter User name"></asp:RequiredFieldValidator>
											</div>
                                            </div>
                                        </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <label>Password</label>
												 <asp:TextBox ID="txtpwd" class="form-control" runat="server" placeholder="Password" TextMode="Password" MaxLength="10"></asp:TextBox>
                                                 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                             ControlToValidate="txtpwd" ForeColor="Red" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <label>Re-enter Password</label>
												 <asp:TextBox ID="repwd" class="form-control" runat="server" placeholder="Confirm Password" TextMode="Password" MaxLength="10"></asp:TextBox>
                                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="repwd"  ErrorMessage="Password not match" ForeColor="Red"  Display="Dynamic"></asp:CompareValidator>
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <label>Contact No</label>
												<asp:TextBox ID="txtcono" class="form-control" runat="server" placeholder="Contact No" MaxLength="10"></asp:TextBox>
                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtcono" ForeColor="Red"
                                             ErrorMessage="Enter Number Onlu" Display="Dynamic" ClientValidationFunction="chkphonelen"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                             ControlToValidate="txtcono" ForeColor="Red" ErrorMessage="Enter Contact number"></asp:RequiredFieldValidator>
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <label>Email</label>
												 <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Email ID" MaxLength="49"></asp:TextBox>
                                                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtemail" ForeColor="Red"
                                             ErrorMessage="Enter Number Onlu" Display="Dynamic" ClientValidationFunction="chkemail"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                                             ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <label>Security Code</label>
												 <asp:TextBox ID="txtsecode" class="form-control" runat="server" placeholder="Security Code" MaxLength="4"></asp:TextBox>
                                           <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txtsecode" ForeColor="Red"
                                             ErrorMessage="Enter Number Onlu" Display="Dynamic" ClientValidationFunction="onlynumber"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                             ControlToValidate="txtsecode" ForeColor="Red" ErrorMessage="Enter Security code"></asp:RequiredFieldValidator>
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                 <asp:Button ID="btnsub" runat="server" Text="Sign UP"  class="btn btn-outline-info" ></asp:Button>
                                                 <asp:Button ID="btncnl" runat="server" Text="Cancel"  class="btn btn-outline-danger"></asp:Button>
                            
                                                <br />
                                            </div>
                                            <div style="margin-bottom:25px">
                                                <asp:Label ID="lblmsg" ForeColor="Red" runat="server"></asp:Label>
                                            </div>
									 </div>
                                    </div>
                                  
                                    </div>
								<div class="col-md-4">

								</div>
							</div>
           
           </div>
          
 </section>


</asp:Content>

