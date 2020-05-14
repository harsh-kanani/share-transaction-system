<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="document.aspx.vb" Inherits="admin_document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="wrapper">
<div id="page-wrapper">
 <div class="header"> 
                        <h1 class="page-header">
                            <%--Dashboard <small>Welcome John Doe</small>--%>
                        </h1>
						<ol class="breadcrumb">
					  <%--<li><a href="#">Home</a></li>
					  <li><a href="#">Dashboard</a></li>
					  <li class="active">Data</li>--%>
					</ol> 
									
		</div>
   <div id="page-inner">
       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex=0>
           <asp:View ID="View1" runat="server">
                     <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Document Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>document id</th>
                                            <th>Document Name</th>           
                                            <th>Document Type</th>
                                            <th>Document For</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptdocument" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lbldocid" runat="server" Text='<%# eval("docid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldocnm" runat="server" Text='<%# eval("docname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldoctype" runat="server" Text='<%# eval("doctype") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldocfor" runat="server" Text='<%# eval("docfor") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" CommandArgument='<%# eval("docid") %>' class="pull-left"><i class="fa fa-trash-o" style="font-size:20px"></asp:LinkButton>
                                           <asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("docid") %>' class="pull-right"><i class="fa fa-pencil" style="font-size:20px"></asp:LinkButton></td>
                                            
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
                                            <label for="exampleInputName2">Document Id</label>
                                            <asp:TextBox ID="txtdocid" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label for="exampleInputName2">Document Name</label>
                                            <asp:TextBox ID="txtdocnm" class="form-control" placeholder="Enter Document Name" runat="server"></asp:TextBox>
                                        </div>
                                                                         
                                        
                                        
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Document Type</label>
                                            <asp:TextBox ID="txtdoctype" class="form-control" 
                                                placeholder="Enter Document Type" runat="server" ></asp:TextBox>
                                        </div>
                                      
                                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Document For</label>
                                            <asp:TextBox ID="txtdocfor" class="form-control" placeholder="Enter Document For" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
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
  
 
                 
			         <footer><p>All right reserved. © 2018 Share World.</p>
				
        
		    		</footer>
		    
                    </div>
                    </div>

</div>
</asp:Content>

