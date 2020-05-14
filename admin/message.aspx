<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="message.aspx.vb" Inherits="admin_msg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="page-wrapper">
   <div id="page-inner">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex=0>
        <asp:View ID="View1" runat="server">
          
           
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             User Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnshow" runat="server" Text="View Messages" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Reg Id</th>
                                            <th>user Name</th>
                                            <th>User Type</th>
                                            <th>Contact No</th>
                                           
                                            <th>Send Message</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptdmat" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lbldematid" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblopendata" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldematno" runat="server" Text='<%# eval("usertype") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldemattype" runat="server" Text='<%# eval("contactno") %>'></asp:Label></td>
                                            
                                            
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="message" CommandArgument='<%# eval("regid") %>'><center><i >Send &nbsp;&nbsp; </i><i class="fa fa-comment-o" style="font-size:20px"></i></center></asp:LinkButton></td>
                                            
                                            </tr>
                                            
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <div><asp:Label ID="lblmsg0" runat="server" Text=""></asp:Label></div>
                    <!--End Advanced Tables -->
                </div>
            </div>
        

        </asp:View>
        
        <asp:View ID="View2" runat="server">

              <div class="row">
                        <div class="col-xs-12">					
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Send Message</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                     <div class="form-group">
                                            <label>Register Id</label>
                                            <asp:TextBox ID="txtregid" class="form-control" runat="server" placeholder="regid" ReadOnly="true"></asp:TextBox>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label> Subject</label>
                                            <asp:TextBox ID="txtsubject" class="form-control" runat="server" 
                                                     placeholder="Enter Subject"  ></asp:TextBox>
                                        </div>
                                                                         
                                        
                                        
                                        <div class="form-group">
                                            <label>Message</label>
                                      <asp:TextBox ID="txtmsg" class="form-control" runat="server" 
                                                     placeholder="Enter Message" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmsg" ForeColor="Red" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
                                        </div>                                  
                                                <asp:Button ID="btnsub" runat="server" Text="Send"  class="btn btn-success" ></asp:Button>
                                                <asp:Button ID="btncnl" runat="server" Text="Cancel"  class="btn btn-danger" CausesValidation="False"></asp:Button>

                                         <div class="col-sm-offset-2 col-sm-10">
                                              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>     
                                         </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
        </asp:View>
        <asp:View ID="View3" runat="server">

                    <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Show Messages
                              <div style="text-align:right">
                                 <asp:Button ID="btnsend" runat="server" Text="Send Message" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>regid</th>
                                            <th>user Name</th>
                                            
                                            
                                           
                                            <th>Message</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptmsg" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">
                                               
                                            <td><asp:Label ID="lbldematid" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblopendata" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldematno" runat="server" Text='<%# eval("message") %>'></asp:Label></td>
                                            
                                            
                                            
                                            
                                            
                                            </tr>
                                            
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <div><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                    <!--End Advanced Tables -->
                </div>
            </div>
        
        </asp:View>

    </asp:MultiView>
    <div class="col-sm-12">
			         <footer><p>All right reserved. © 2018 Share World.</p>
				
        
		    		</footer>
		         </div>
    </div>
    </div>




</asp:Content>

