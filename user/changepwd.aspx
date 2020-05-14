<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="changepwd.aspx.vb" Inherits="user_changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
<div class="container">
			<h3>Change Password  
           <i class="fa fa-gears"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>


    </div>--%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="contact">
<div class="container">
    	 <div class="row">
             <div class="row">						
           <div class="section-header">
                 <h2>Change Password
                 <i class="fa fa-gears"></i></h2>
           </div>
       </div>
      
								<div class="col-md-4">
								</div>
									<div class="col-md-4">
                                        
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                
                                                <asp:TextBox ID="txtoldpwd" class="form-control" runat="server" 
                                                     placeholder="Enter Old Password"  TextMode="Password" MaxLength="10"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Old Password" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtoldpwd"></asp:RequiredFieldValidator>
                                                    
                                            </div>
                                            </div>
                                        </div>
                                    
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                 
                                                 <asp:TextBox ID="txtnewpwd" class="form-control" runat="server" 
                                                     placeholder="Enter New Password"  TextMode="Password" MaxLength="10"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter New Password" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtnewpwd"></asp:RequiredFieldValidator>
                                                    
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">

												<asp:TextBox ID="txtconformpwd" class="form-control" runat="server" 
                                                     placeholder="Reenter New Password"  TextMode="Password" MaxLength="10"></asp:TextBox>
                                                
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your Password Doesn't Match" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtconformpwd" ControlToCompare="txtnewpwd"></asp:CompareValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Conform Password" ControlToValidate="txtconformpwd" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                            </div>
                                    </div>
                                    
                                  
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Change Password"  class="btn btn-outline-info " ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger " CausesValidation="False"></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                    </div>
                                    
								<div class="col-md-4">
                                     
								</div>
							</div>
             </div>
	</div>
 
</asp:Content>

