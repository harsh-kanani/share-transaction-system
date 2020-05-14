<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="shareholder.aspx.vb" Inherits="user_shareholder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Share Holder Detail
           <i class="fa fa-user"></i></h3>
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
                 <h2>Share Holder Detail
                 <i class="fa fa-user"></i></h2>
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
                                                    <b>Holder Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                <asp:TextBox ID="txtholdnm" class="form-control" runat="server" placeholder="Enter Holder Name" MaxLength="50"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Allow Only Alpha" Display="Dynamic" ClientValidationFunction="onlyalpha" ControlToValidate="txtholdnm" ForeColor="#CC0000"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Holder Name" ForeColor="#CC0000" ControlToValidate="txtholdnm" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                                    <b>Holder Photo</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:FileUpload ID="flphoto" runat="server" class="form-control"/>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Photo" ForeColor="#CC0000" ControlToValidate="flphoto"></asp:RequiredFieldValidator>
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
                                                    <b>Address</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtaddress" class="form-control" runat="server" placeholder="Enter Address" Rows="5" TextMode="MultiLine" MaxLength="99"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Address" Display="Dynamic" ControlToValidate="txtaddress" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                                                    <asp:DropDownList ID="ddcity" runat="server" class="form-control">
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
                                                    <asp:TextBox ID="txtpincode" class="form-control" runat="server" placeholder="Enter Pincode" MaxLength="6"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Allow Only Number" Display="Dynamic" ForeColor="#CC0000" ClientValidationFunction="onlynumber" ControlToValidate="txtpincode"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Holder Name" ForeColor="#CC0000" ControlToValidate="txtpincode" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                                    <b>Mobile No</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Enter Mobile No" MaxLength="10"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Allow Only Number" Display="Dynamic" ForeColor="#CC0000" ClientValidationFunction="onlynumber" ControlToValidate="txtmobile"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Mobile No" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
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
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Enter Email" MaxLength="50"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Enter Valid Email" Display="Dynamic" ClientValidationFunction="checkmail" ControlToValidate="txtemail" ForeColor="#CC0000"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
												</div>
                                                </div>  
                                                
												
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger" CausesValidation="False"></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
                                            </div>
									 </div>
                                    </div>
								<div class="col-md-2">

								</div>
							</div>
                            </div>
             </div>
	</div>
 
</asp:Content>

