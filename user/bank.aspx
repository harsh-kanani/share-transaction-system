<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="bank.aspx.vb" Inherits="user_bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  
	
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <div class="contact">
<div class="container">

	<div class="row"> 
    
	 <div class="row">						
           <div class="section-header">
                 <h2>Bank
                 <i class="fa fa-bank"></i></h2>
           </div>
       </div>
							<div class="col-md-12">
								<div class="about-logo">
									
								</div> 
							</div>
						</div>
	<div class="row">
    
								
                                    <%--<div class="col-md-2">
                                    </div>--%>
									<div class="col-md-6">
                                        <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                     <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Bank Name</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                <asp:TextBox ID="txtbanknm" class="form-control" runat="server" placeholder="Enter Bank Name" MaxLength="40"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtbanknm" Display="Dynamic" ErrorMessage="Enter Alpha" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                                        ClientValidationFunction="onlyalpha" ControlToValidate="txtbanknm" 
                                                        Display="Dynamic" ErrorMessage="Enter Only Alpha" ForeColor="Red"></asp:CustomValidator>
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
                                                    <b>Branch Name</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                    <asp:TextBox ID="txtbrnchname" class="form-control" runat="server" 
                                                     placeholder="Enter Branch Name"  MaxLength="19"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtbrnchname" Display="Dynamic" 
                                                        ErrorMessage="Enter Branch Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                                                        ClientValidationFunction="onlyalpha" ControlToValidate="txtbrnchname" 
                                                        Display="Dynamic" ErrorMessage="Enter Only Alpha" ForeColor="Red"></asp:CustomValidator>
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
                                                    <b>Account No</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                    <asp:TextBox ID="txtacno" class="form-control" runat="server" 
                                                     placeholder="Enter Account No"  MaxLength="15"></asp:TextBox>
												</div>
                                                           <asp:CustomValidator ID="cstmacno" runat="server" 
                                                               ClientValidationFunction="onlynumber" ControlToValidate="txtacno" 
                                                               Display="Dynamic" ErrorMessage="Enter Only Number" ForeColor="Red"></asp:CustomValidator>
                                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                               ControlToValidate="txtacno" Display="Dynamic" ErrorMessage="Enter Acc No" 
                                                               ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                                                                
												 
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">

                                                           <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Account Type</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                    <asp:DropDownList ID="ddactype" class="form-control" runat="server">
                                                        <asp:ListItem>Current</asp:ListItem>
                                                        <asp:ListItem>Saving</asp:ListItem>
                                                    </asp:DropDownList>
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
                                                    <b>Ifsc Code</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                    <asp:TextBox ID="txtifccode" class="form-control" runat="server" 
                                                     placeholder="Enter ifsc Code"  MaxLength="11"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtifccode" Display="Dynamic" ErrorMessage="Enter Ifsc Code" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
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
                                                    <b>Email</b>
                                                </div>
                                                <div class="col-md-8"> 
                                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" 
                                                     placeholder="Enter Email" MaxLength="49"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter Email" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" 
                                                        ClientValidationFunction="checkmail" ControlToValidate="txtemail" 
                                                        Display="Dynamic" ErrorMessage="Your Email Is wrong" ForeColor="Red"></asp:CustomValidator>
												</div>
                                                </div>

                                                                                                
												 
											</div>
                                            </div>
                                    </div>
                                     </div>
                                      <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Save"  class="btn btn-outline-info " ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger" CausesValidation="False"></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                  
                                 
                                    </div>
								<%--<div class="col-md-2">

								</div>--%>
                                <div class="col-md-6">
                                    <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                    
                                                    <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Address</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="Txtaddress" class="form-control" runat="server" 
                                                     placeholder="Enter Address" TextMode="MultiLine" Rows="4" MaxLength="99"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="Txtaddress" Display="Dynamic" ErrorMessage="Enter Address" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
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
                                                    <b>City</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:DropDownList ID="ddcitylist" class="form-control" runat="server">
                                                    </asp:DropDownList>
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
                                                    <b>Pincode</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                     <asp:TextBox ID="txtpincode" class="form-control" runat="server" 
                                                     placeholder="Enter Pincode" MaxLength="6" ></asp:TextBox>
												     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                         ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Enter Pincode" 
                                                         ForeColor="Red"></asp:RequiredFieldValidator>
                                                     <asp:CustomValidator ID="CustomValidator4" runat="server" 
                                                         ClientValidationFunction="onlynumber" ControlToValidate="txtpincode" 
                                                         Display="Dynamic" ErrorMessage="Enter Only Number" ForeColor="Red"></asp:CustomValidator>
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
                                                    <b>Phone No</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtphone" class="form-control" runat="server" 
                                                     placeholder="Enter Phone No" MaxLength="10" ></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Enter Phone No" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator5" runat="server" 
                                                        ClientValidationFunction="onlynumber" ControlToValidate="txtphone" 
                                                        Display="Dynamic" ErrorMessage="Enter Only Number" ForeColor="Red"></asp:CustomValidator>
												</div>
                                                </div>
												 
											</div>
                                            </div>
                                    </div>
                                    </div>
								</div>
							</div>
             </div>
             
             </div>
                
 


</asp:Content>

