<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="transfer.aspx.vb" Inherits="user_transfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contact" style="background-color:rgb(247, 247, 247)">
<%--<div class="container">
			<h3>Transfer Money  
           <i class="fa fa-inr"></i></h3>
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
                 <h2>Transfer Money <i class="fa fa-inr"></i>
                 </h2>
           </div>
       </div>
	<div class="row">
 
								<div class="col-md-4">
                                    <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">
                                         <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                  
                                                <label>Demat Balance : </label>
                                                <asp:Label ID="lbldemat" runat="server" Text=""></asp:Label>                                                                                        
											</div>
                                            </div>
                                        </div>
                                    </div>
								</div>
									<div class="col-md-4">
                                        <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">			                  
                                         <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                    
                                                   
                                                    <label> withdrawl / Deposite From/TO Demat</label>
                                                
                                                    <asp:DropDownList ID="ddlist" runat="server" class="form-control">
                                                        <asp:ListItem>withdrawl</asp:ListItem>
                                                        <asp:ListItem>deposite</asp:ListItem>
                                                    </asp:DropDownList>
                                               
                                                 
                                                   
											</div>
                                            </div>
                                        </div>
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                   
                                                    <label>Your Demat Number</label>
                                                
                                                   <asp:TextBox ID="txtdematnum" class="form-control" runat="server" 
                                                     placeholder="Enter Demat Number" ReadOnly="true"></asp:TextBox>
                                                    
                                                
											</div>
                                            </div>
                                        </div>
                                    
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                    
                                                    <label>Your Bank Account Number</label>
                                                
                                                     <asp:TextBox ID="txtbanknum" class="form-control" runat="server" 
                                                     placeholder="Enter Bank Number" ReadOnly="true"></asp:TextBox>
                                               
                                                 
                                               
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                     
                                                    <label>Ammount</label>
                                               
                                                   <asp:TextBox ID="txtamt" class="form-control" runat="server" 
                                                     placeholder="Enter Ammount" ></asp:TextBox> 
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Allow Only Number" Display="Dynamic" ForeColor="#CC0000" ClientValidationFunction="onlynumber" ControlToValidate="txtamt"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Ammount" ForeColor="#CC0000" ControlToValidate="txtamt" Display="Dynamic"></asp:RequiredFieldValidator>

												
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                      
                                                    <label>Detail</label>
                                                
                                                  <asp:TextBox ID="txtdetail" class="form-control" runat="server" 
                                                     placeholder="Enter Purpose"  MaxLength="49"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Detail" ForeColor="#CC0000" ControlToValidate="txtdetail" Display="Dynamic"></asp:RequiredFieldValidator>
                                                   
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


</asp:Content>

