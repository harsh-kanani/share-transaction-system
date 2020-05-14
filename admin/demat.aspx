<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="demat.aspx.vb" Inherits="admin_demat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="page-wrapper">
   <div id="page-inner">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex=0>
        <asp:View ID="View1" runat="server">
          
           
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Demat Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Demat Id</th>
                                            <th>Demat Open Date</th>
                                            <th>Demat No</th>
                                            
                                            <th>Openig Balance</th>
                                            <th>Register Id</th> 
                                            <th>Company Name</th>
                                            <th>Details</th>
                                            <th>Action</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptdmat" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lbldematid" runat="server" Text='<%# eval("dematid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblopendata" runat="server" Text='<%# eval("dematopendate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldematno" runat="server" Text='<%# eval("dematno") %>'></asp:Label></td>
                                            
                                            <td><asp:Label ID="lblopnbalance" runat="server" Text='<%# eval("balance") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblregid" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("cmpname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldetail" runat="server" Text='<%# eval("detail") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" CommandArgument='<%# eval("dematid") %>' class="pull-left"><i class="fa fa-trash-o" style="font-size:20px"></i></asp:LinkButton>
                                            <asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("dematid") %>' class="pull-right"><i class="fa fa-pencil" style="font-size:20px"></asp:LinkButton></td>
                                            
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
                        <div class="col-md-12 col-sm-12 col-xs-12">					
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Company Details</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form class="form-inline">

                                         <div class="form-group">
                                            
                                            <asp:TextBox ID="txtdematid" class="form-control" 
                                                 runat="server" ReadOnly="True" Visible="false"></asp:TextBox>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Demat No</label>
                                            <asp:TextBox ID="txtdmtno" class="form-control" placeholder="Enter Demat No" runat="server"></asp:TextBox>
                                        </div>
                                       
                                        

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Balance</label>
                                            <asp:TextBox ID="txtopenbalance" class="form-control" placeholder="Enter Balance" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Regid</label>
                                            <asp:TextBox ID="txtregid" class="form-control" placeholder="Enter Register Id" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Company Name</label>
                                            <asp:TextBox ID="txtcmpnm" class="form-control" placeholder="Enter Company Name" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Details</label>
                                            <asp:TextBox ID="txtdetail" class="form-control" placeholder="Enter Details" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        

                                        

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Save" />
                                        <asp:Button ID="btncan" runat="server" class="btn btn-danger" Text="Cacel" />

                                         
                                    </form>
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

