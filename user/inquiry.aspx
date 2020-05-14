<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="inquiry.aspx.vb" Inherits="user_inquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container" style="background-color:rgb(247, 247, 247)">
			<h3>Inquiry
           <i class="fa fa-pencil-square"></i></h3>
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
                 <h2>Inquiry
                 <i class="fa fa-pencil-square"></i></h2>
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
                                                    <b>Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Enter Name" MaxLength="50"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Allow Only Alpha" ClientValidationFunction="onlyalpha" ControlToValidate="txtname" ForeColor="#CC0000" Display="Dynamic"></asp:CustomValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" Display="Dynamic" ControlToValidate="txtname"></asp:RequiredFieldValidator>
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
                                                    <b>Contact No</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtcontactno" class="form-control" runat="server" 
                                                     placeholder="Enter Contact Number"  MaxLength="10"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Allow only Number" Display="Dynamic" ForeColor="#CC0000" ClientValidationFunction="onlynumber" ControlToValidate="txtcontactno"></asp:CustomValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Contact No" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtcontactno"></asp:RequiredFieldValidator>
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
                                                   <asp:TextBox ID="txtemailid" class="form-control" runat="server" 
                                                     placeholder="Enter Email Address"  MaxLength="49"></asp:TextBox>
                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtemailid" ClientValidationFunction="checkmail" Display="Dynamic" ForeColor="#CC0000"></asp:CustomValidator>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ForeColor="#CC0000" ControlToValidate="txtemailid" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                                  <asp:TextBox ID="txtdetail" class="form-control" runat="server" 
                                                     placeholder="Enter Detail" Rows="5" TextMode="MultiLine" MaxLength="100"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Detail" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtdetail"></asp:RequiredFieldValidator>
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
 <div class="contact">
 <div class="container">
 
 <div class="row">						
           <div class="section-header">
                 <h2>Show Inquiry
                 <i class="fa fa-pencil-square"></i></h2>
           </div>
       </div>



        <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th ><b>Inquiry</b></th>
										    <th ><b>Reply</b></th>
										   
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                             <asp:Repeater ID="reptinq" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                         
										    <td>
                                            <asp:Label ID="lblque" runat="server" Text='<%# eval("inqdetail") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
										    </td>
										    <td ><asp:Label ID="lblans" runat="server" Text='<%# eval("replay") %>' Font-Size="Larger" Font-Bold="True"></asp:Label></td>
										    
										    </td>
								
                                            
                                            </tr>
                                            
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    
                    <!--End Advanced Tables -->
                </div>
       </div>
    </div>
</asp:Content>

