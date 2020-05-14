<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="question.aspx.vb" Inherits="user_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Question
           <i class="fa fa-question-circle-o"></i></h3>
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
                 <h2>Question
                 <i class="fa fa-question-circle-o"></i></h2>
           </div>
       </div>
	<div class="row">
   
								<div class="col-md-4">
								
								</div>             
                                <div class="col-md-5">    
                                    <div class="well well-lg" style="background-color:white;box-shadow:2px 2px 2px 2px;">			                  
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                <asp:TextBox ID="txtquestion" class="form-control" runat="server" placeholder="Enter Question" TextMode="MultiLine" Rows="3" MaxLength="50"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Question" Display="Dynamic" ControlToValidate="txtquestion" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                            <center>					
           <div class="section-header">
            <h2>Show Answer
                 </h2>
           </div>
           </center>
       </div>

                            <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th ><b>Question</b></th>
										    <th ><b>Answer</b></th>
										    <th ><b>Answer By</b></th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                             <asp:Repeater ID="reptquestion" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                         
										    <td>
                                            <asp:Label ID="lblque" runat="server" Text='<%# eval("question") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
										    </td>
										    <td ><asp:Label ID="lblans" runat="server" Text='<%# eval("answer") %>' Font-Size="Larger" Font-Bold="True"></asp:Label></td>
										    <td ><asp:Label ID="lblansby" runat="server" Text='<%# eval("answerby") %>' Font-Size="Larger" Font-Bold="True"></asp:Label>
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
							
					<%--
                                <div class="panel panel-default">
                       
                                    <div class="panel-body">
                                        <div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<tr>
										<th ><b>Question</b></th>
										<th ><b>Answer</b></th>
										<th ><b>Answer By</b></th>
									</tr>
                                    <asp:Repeater ID="reptquestion" runat="server">
                                    <ItemTemplate>
									<tr>
										<td>
                                            <asp:Label ID="lblque" runat="server" Text='<%# eval("question") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
										</td>
										<td ><asp:Label ID="lblans" runat="server" Text='<%# eval("answer") %>' Font-Size="Larger" Font-Bold="True"></asp:Label></td>
										<td ><asp:Label ID="lblansby" runat="server" Text='<%# eval("answerby") %>' Font-Size="Larger" Font-Bold="True"></asp:Label>
										</td>
									</tr>
                                    </ItemTemplate>
                                     </asp:Repeater>
									</table>
								</div>
                                </div>
							</div>--%>
						</div>
 
 
 
 </div>
 
 
 
 </div>

</asp:Content>

