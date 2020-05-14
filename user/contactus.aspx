<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="user_contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="contact">
<div class="container">
	<div class="row">						
           <div class="section-header">
                 <h2>Contact Us
                 <i class="fa fa-pencil-square"></i></h2>
           </div>
       </div>
	<div class="row">
 
								<div class="col-md-2">
								</div>
                                <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">	
									<div class="col-md-10">
                                        
                                       <div class="col-md-6">
                                            <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                       <div class="row">
                                                <div class="col-md-3"> 
                                                    <label>Name</label>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Enter Name" MaxLength="40"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Allow Only Alpha" ClientValidationFunction="onlyalpha" ControlToValidate="txtname" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" Display="Dynamic" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                                    <label>Subject</label>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtsub" class="form-control" runat="server" 
                                                     placeholder="Enter Contact Number"  MaxLength="40"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Allow only Number" Display="Dynamic" ForeColor="Red" ClientValidationFunction="onlyalpha" ControlToValidate="txtsub"></asp:CustomValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Contact No" Display="Dynamic" ForeColor="Red" ControlToValidate="txtsub"></asp:RequiredFieldValidator>
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
                                                    <label> Email</label>
                                                </div>
                                                <div class="col-md-9"> 
                                                   <asp:TextBox ID="txtemailid" class="form-control" runat="server" 
                                                     placeholder="Enter Email Address"  MaxLength="40"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtemailid" ClientValidationFunction="checkmail" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ForeColor="Red" ControlToValidate="txtemailid" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                                </div>  
												  
											</div>
                                            </div>
                                    </div>
                                    	 </div> 
                                      	<div class="col-md-6" >
                                             <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                     <div class="row">
                                                <div class="col-md-3"> 
                                                    <label>Message</label>
                                                </div>
                                                <div class="col-md-9"> 
                                                  <asp:TextBox ID="txtdetail" class="form-control" runat="server" 
                                                     placeholder="Enter Detail" Rows="5" TextMode="MultiLine" Columns="35" MaxLength="180"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Detail" Display="Dynamic" ForeColor="Red" ControlToValidate="txtdetail"></asp:RequiredFieldValidator>
												</div>
                                                </div>  
                                                   
                                            </div>
                                            </div>
                                    </div>
                                             <div class="control-group">                                  
                                                    <div class="controls">
                                                    <asp:Button ID="btnsub" runat="server" Text="SUBMIT"  class="btn btn-outline-info" ></asp:Button>
                                                    </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
                                            </div>
                                        </div>
                                
                                    </div>
                                    </div>
								<div class="col-md-1">

								</div>
							</div>
             </div>
	</div>
</asp:Content>

