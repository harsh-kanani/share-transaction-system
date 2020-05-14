<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="userprofile.aspx.vb" Inherits="user_userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 

    <div class="contact">
        <div class="container">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
               
           <div class="row">
           <div class="col-md-12">						
           <div class="section-header">
                 <h2 class="float-left ">User Profile
                 <i class="fa fa-user"></i></h2>
                    <asp:Button ID="btnedit" runat="server" Text="Edit" class="btn btn-outline-info float-right" ></asp:Button>
                 <div class="clearfix"></div>
           </div>
           </div>
       </div>

       
                                
                                     
       	<div class="row">
        <asp:Repeater ID="reptprofile" runat="server">
            <ItemTemplate>  
								<div class="col-md-3">
                                    <asp:Image ID="Image1" ImageUrl='<%# "~/user/uimg/" & eval("uimg") %>' runat="server" Width="200px" Height="250px"  AlternateText="Image in not available" ImageAlign="Right" />

								</div>         
               
                                <div class="col-md-6"> 
                                    <div class="control-group"> 
                                                                     
                                                                      
											<div class="controls">
                                                <div class="help-block">
                                                <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>User Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                  :<asp:Label ID="lblcmpid" runat="server" Text='<%# eval("holdername") %>'></asp:Label>
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
                                                     :<asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("address") %>'></asp:Label>
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
                                                    <b>City :</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    :<asp:Label ID="lblshortnm" runat="server" Text='<%# eval("cityname") %>'></asp:Label>
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
                                                     :<asp:Label ID="lbladdress" runat="server" Text='<%# eval("pincode") %>'></asp:Label>
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
                                                     :<asp:Label ID="lblcityid" runat="server" Text='<%# eval("mobile") %>'></asp:Label>
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
                                                     :<asp:Label ID="lblpincode" runat="server" Text='<%# eval("email") %>'></asp:Label>
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
                                                    <b>Gender</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:Label ID="lblfax" runat="server" Text='<%# eval("gender") %>'></asp:Label>
												</div>
                                                </div>
                                                
												
											</div>
                                      </div>
                                    </div>
                                     <div><asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></div>
                                   

                                    </div>
								<div class="col-md-2">

								</div>
                                   </ItemTemplate>
                                    </asp:Repeater>
							</div>               
                 
                </asp:View>
                <asp:View ID="View2" runat="server">
                        <div class="row">
             
								<div class="col-md-4">
								
								</div>             
                                <div class="col-md-4">   
                                     <div class="control-group">                                  
											<div class="controls">
                                                <div class="help-block">
                                                     <div class="row">
                                                <div class="col-md-3"> 
                                                    <b>id</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                   <asp:TextBox ID="txtid" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
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
                                                    <b>Holder Name</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                   <asp:TextBox ID="txtholdnm" class="form-control" runat="server" placeholder="Enter Holder Name" MaxLength="50"></asp:TextBox>
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
                                                   <asp:TextBox ID="txtpincode" class="form-control" runat="server" placeholder="Enter Pincode" MaxLength="7"></asp:TextBox>
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
                                                    <b>Mobile</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                     <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Enter Mobile No" MaxLength="10"></asp:TextBox>
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
                                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Enter Email" MaxLength="49"></asp:TextBox>
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
                                                    <b>Gender</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:RadioButton ID="rdomale" runat="server" GroupName="rdogen" Text="male"/>
                                                    <asp:RadioButton ID="rdofemale" runat="server" GroupName="rdogen" text="female"/>
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
                                                    <b>Profile Pic</b>
                                                </div>
                                                <div class="col-md-9"> 
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
												</div>
                                                </div>	
											</div>
                                      </div>
                                    </div>
                                    <div class="control-group">                                  
                                            <div class="controls">
                                                <asp:Button ID="btnsub" runat="server" Text="Submit"   class="btn btn-outline-info" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Reset"   class="btn btn-outline-danger" ></asp:Button>
                                            </div>
                                          
									 </div>
                                    </div>
								<div class="col-md-4">
                
								</div>
							</div>
  
                </asp:View>
            </asp:MultiView>




        
            
             </div>

  </div>
</asp:Content>

