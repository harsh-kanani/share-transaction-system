<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="usershare.aspx.vb" Inherits="user_usershare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Show Share 
           <%--<i class="fa fa-user"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="contact">
        <div class="container">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <div class="row">						
           <div class="section-header">
                 <h2>User Share
                </h2>
           </div>
       </div>
                    <div class="row">

                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                       
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Share Name</th>
                                            <th>Qty</th>
                                            <th>Sell</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptshtrans" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblcmpid" runat="server" Text='<%# eval("transdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("sharename") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("qty") %>'></asp:Label></td>
                                            <td>
                                               <asp:LinkButton ID="lnksell" runat="server" CommandName="update" CommandArgument='<%# eval("ushareid") %>'>Sell</asp:LinkButton>
                                            
                                            </tr>
                                            
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <div><asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                        <div class="row">						
                         <div class="section-header">
                            <h2>Sell Share
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
                                                    <asp:TextBox ID="txtshname" class="form-control" runat="server" placeholder="Enter Share Name" ></asp:TextBox>
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
                                                    <b>Share Qty</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtqty" class="form-control" runat="server" readonly="true"></asp:TextBox>
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
                                                    <asp:TextBox ID="txtprice" class="form-control" runat="server" placeholder="Enter Price"></asp:TextBox>
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
                                                    <b>Sell Qty</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:TextBox ID="txtfinalqty" class="form-control" runat="server" placeholder="Enter Qty" AutoPostBack="True"></asp:TextBox>
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
                                                       <asp:TextBox ID="brock" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                       
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
                                                       <asp:TextBox ID="total" class="form-control" runat="server" placeholder="" AutoPostBack="True"></asp:TextBox>
                                       
                                                </div>
                                                </div>
                                                
												
											</div>
                                            </div>
                                    </div>
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"  class="btn btn-outline-danger" ></asp:Button>
                                            </div>
                                            <div>
                                                <asp:Label ID="lblmesg" runat="server" Text=""></asp:Label>
                                            </div>
									 </div>
                                    </div>
                                </div>
								<div class="col-md-4">

								</div>
							</div>
                            </div>
    


                </asp:View>
            </asp:MultiView>
       
    
        
            
             </div>

 </asp:Content>

