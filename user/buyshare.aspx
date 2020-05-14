<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="buyshare.aspx.vb" Inherits="user_sharetransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Share transaction
           <%--<i class="fa fa-user"></i></h3>
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
                 <h2>Buy Share
                 </h2>
           </div>
    							         
      </div> 
	<div class="row">
   
								<div class="col-md-3">
								 <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">                                     
                                           <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                 <div class="row">
                                                
                                                <div class="col-md-12"> 
                                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox> 
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
                                                   
                                                </div>
                                                <div class="col-md-9"> 
                                                   <asp:Button ID="Button1"
                  runat="server" Text="Check Price" class="btn btn-primary" CausesValidation="False" />
												</div>
                                                </div>
											</div>
                                            </div>
                                                 </div>
                                          </div>
								</div>    
                            
                                        
                                <div class="col-md-6">    
                                <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">                  
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                 <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Share Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtsharenm" class="form-control" runat="server" placeholder="Enter share Name" ReadOnly="true"></asp:TextBox>
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
                                                    <b>Price</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                       <asp:TextBox ID="txtprice" class="form-control" runat="server" placeholder="Enter Price" AutoPostBack="True" MaxLength="7"></asp:TextBox>
                                                       <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter only number" Display="Dynamic" EnableClientScript="True" ControlToValidate="txtprice" ClientValidationFunction="onlynumber"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Price" Display="Dynamic" ControlToValidate="txtprice" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                                                    <b>Qty</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtqty" class="form-control" runat="server" placeholder="Enter Quantity" AutoPostBack="True"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Qty" Display="Dynamic" ControlToValidate="txtqty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Allow Only Number" ControlToValidate="txtqty"  Display="Dynamic" ClientValidationFunction="onlynumber" ForeColor="#CC0000"></asp:CustomValidator>
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
                                                    <b>Brockerage</b>
                                                </div>
                                                <div class="col-md-9">
                                                       <asp:TextBox ID="brock" class="form-control" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
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
                                                    <b>Total</b>
                                                </div>
                                                <div class="col-md-9">
                                                       <asp:TextBox ID="total" class="form-control" runat="server" placeholder="" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                                       
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
								<div class="col-md-3">

								</div>
							</div>
                            </div>
     </div>



</asp:Content>

