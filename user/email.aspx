<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="email.aspx.vb" Inherits="user_email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
	<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Email
           <i >@</i></h3>
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
                 <h2>Email
                 <i>@</i></h2>
           </div>
       </div>
	<div class="row">
        
								<div class="col-md-3">
								</div>
									<div class="col-md-6">
									    <div class="control-group">
											<div class="controls">
                                                <div class="help-block">
                                                       <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>Email From</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtemailfrom" class="form-control" runat="server" 
                                                     placeholder="Enter Email From" ReadOnly="true"></asp:TextBox>
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
                                                    <b>Email To</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtemailto" class="form-control" runat="server" placeholder="Enter Email To"></asp:TextBox>
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
                                                    <b>Subject</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                     <asp:TextBox ID="txtsubject" class="form-control" runat="server" 
                                                     placeholder="Enter Subject"  ></asp:TextBox>
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
                                                     placeholder="Enter Detail" Rows="5" TextMode="MultiLine"></asp:TextBox>
												</div>
                                                </div>  
                                                   
                                            </div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">

												  <asp:TextBox ID="txtregid" class="form-control" runat="server" 
                                                     placeholder="Enter regid" Visible="False"  ></asp:TextBox>
											</div>
                                            </div>
                                    </div>
                                   
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Send"  class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger" ></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                    </div>
								<div class="col-md-3">
                                       <script src="js/jquery-1.11.1.min.js" type="text/javascript">
    </script>
    <script>
        $(document).ready(function () {
            $.getJSON('https://www.google.com/search?tbm=fin&q=INDEXBOM:+SENSEX&callback=?', function (data) {
            $('#bse').text(data[0].1);
            $('#down').text(data[0].c)
            });
        });
        </script>

    <span id="bse"></span><span id="down"></span>
								</div>
							</div>
             </div>
	</div>
 
	</div>

    
 
    
    
 
</asp:Content>

