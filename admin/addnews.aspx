<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="addnews.aspx.vb" Inherits="admin_addnews" %>

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
                             News Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>News id</th>
                                            <th>News Date</th>
                                            <th>Heading</th> 
                                            <th>News Details</th>
                                            <th>News Type</th>
                                            <th>News By</th>
                                            <th>News For</th>
                                            <th>Delete</th>
                                            <th>Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptnews" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("newsid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdate" runat="server" Text='<%# eval("newsdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("heading") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdetail" runat="server" Text='<%# eval("newsdetail") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewstype" runat="server" Text='<%# eval("newstype") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsby" runat="server" Text='<%# eval("newsby") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsfor" runat="server" Text='<%# eval("newsfor") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" class="pull-left" CommandArgument='<%# eval("newsid") %>'>Delete</asp:LinkButton></td>
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" class="pull-right" CommandArgument='<%# eval("newsid") %>'>Update</asp:LinkButton></td>
                                            
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
                                        <div class="title">Add News</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                   
                                        
                                         <div class="form-group">
                                           
                                            <asp:TextBox ID="txtnewsid" class="form-control" ReadOnly="true" runat="server" Visible="false"></asp:TextBox>
                                        </div>

                                        

                                        <div class="form-group">
                                            <label for="exampleInputName2">News Heading</label>
                                            <asp:TextBox ID="txtnewshd" class="form-control" placeholder="Enter News Heading" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="valheading" runat="server" 
                                                ControlToValidate="txtnewshd" ErrorMessage="Enter Heading"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                                                         
                                        
                                        
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">News Details</label>
                                            <asp:TextBox ID="txtnewsdetails" class="form-control" 
                                                placeholder="Enter News Details" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="valdetail" runat="server" 
                                                ControlToValidate="txtnewsdetails" ErrorMessage="Enter News Details"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                      
                                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">News Type</label>
                                            <asp:TextBox ID="txtnewstype" class="form-control" placeholder="Enter News Type" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="valtype" runat="server" 
                                                ControlToValidate="txtnewstype" ErrorMessage="Enter News Type"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">News By</label>
                                            <asp:TextBox ID="txtnewsby" class="form-control" placeholder="News By" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="valnewsby" runat="server" 
                                                ControlToValidate="txtnewsby" ErrorMessage="Enter News By"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">News For</label>
                                            <asp:TextBox ID="txtnewsfor" class="form-control" placeholder="News For" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="valnewsfor" runat="server" 
                                                ControlToValidate="txtnewsfor" ErrorMessage="Enter News For"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                                                              

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        
                                        <asp:Button ID="btncancel" runat="server" class="btn btn-danger" Text="Cancel" CausesValidation="False" />
                                         <div class="col-sm-offset-2 col-sm-10">
                                              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>     
                                         </div>
                                    
                                </div>
                            </div>
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

