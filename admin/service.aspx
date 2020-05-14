<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="service.aspx.vb" Inherits="admin_service" %>

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
                             Advanced Tables
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Service id</th>
                                            <th>Service Name</th>
                                            <th>Short Name</th> 
                                            <th>Details</th>
                                            <th>Delete</th>
                                            <th>Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptservice" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblserviceid" runat="server" Text='<%# eval("serviceid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblservicenm" runat="server" Text='<%# eval("servicename") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("shortname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldetail" runat="server" Text='<%# eval("details") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" CommandArgument='<%# eval("serviceid") %>'>Delete</asp:LinkButton></td>
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("serviceid") %>'>Update</asp:LinkButton></td>
                                            
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
                                        <div class="title">Company Details</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form class="form-inline">
                                        
                                         <div class="form-group">
                                            <label for="exampleInputName2">Service Id</label>
                                            <asp:TextBox ID="txtserviceid" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label for="exampleInputName2">Service Name</label>
                                            <asp:TextBox ID="txtservicenm" class="form-control" placeholder="Enter News Heading" runat="server"></asp:TextBox>
                                        </div>
                                                                         
                                        
                                        
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Short Name</label>
                                            <asp:TextBox ID="txtshortnm" class="form-control" 
                                                placeholder="Enter News Details" runat="server" ></asp:TextBox>
                                        </div>
                                      
                                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Details</label>
                                            <asp:TextBox ID="txtdetail" class="form-control" placeholder="Enter News Type" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                        </div>

                                        
                                                                              

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        <asp:Button ID="btncan" runat="server" class="btn btn-danger" Text="Cancel" />

                                         <div class="col-sm-offset-2 col-sm-10">
                                              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>     
                                         </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
           </asp:View>
       
       </asp:MultiView>
  
 
                     <div class="col-sm-12">
			        <footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p>
				
        
		    		</footer>
		         </div>
                    </div>
                    </div>


</asp:Content>

