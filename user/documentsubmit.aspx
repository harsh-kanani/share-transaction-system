<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="documentsubmit.aspx.vb" Inherits="user_documentSubmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Document Submit
           <i class="fa fa-clipboard"></i></h3>
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
                 <h2>Document Submit
                 <i class="fa fa-clipboard"></i></h2>
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
                                                    <b>Document Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtdocnm" class="form-control" runat="server" placeholder="Enter Document Name" MaxLength="49"></asp:TextBox>                                     
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Documnet Name" ControlToValidate="txtdocnm" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                                    <b>Document Type</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtdoctype" class="form-control" runat="server" 
                                                     placeholder="Enter Document Type"  MaxLength="48"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Documnet Type" ControlToValidate="txtdoctype" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                                    <b>File Image</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:FileUpload ID="Fileimage" runat="server" class="form-control"></asp:FileUpload>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Documnet File" ForeColor="#CC0000" Display="Dynamic" ControlToValidate="Fileimage"></asp:RequiredFieldValidator>
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
                                                    <b>Purpose</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                         <asp:TextBox ID="txtpurpose" class="form-control" runat="server" 
                                                     placeholder="Enter Purpose"  MaxLength="49"></asp:TextBox>

												</div>
                                                </div>
                                                  
                                            </div>
                                            </div>
                                    </div>
                                  
                                   
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Save"  class="btn btn-outline-info " ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger " CausesValidation="False"></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                     </div>
                                       </div>
                                    </div>
								<div class="col-md-3">

								</div>
							</div>
             </div>
	
	

</asp:Content>

