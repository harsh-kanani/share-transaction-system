<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="showusers.aspx.vb" Inherits="admin_showusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page-wrapper">
   <div id="page-inner">
     <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <center><b>Users</b></center> 
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Registeration Date</th>
                                            <th>Username</th>
                                            <th>User Type</th> 
                                            <th>Contact Number</th>
                                            <th>Emailid</th>
                                            <th>security Code</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptusers" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("regdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdate" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                             <td><asp:Label ID="Label1" runat="server" Text='<%# eval("usertype") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("contactno") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdetail" runat="server" Text='<%# eval("emailid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewstype" runat="server" Text='<%# eval("securitycode") %>'></asp:Label></td>
                                           
                                            
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
             </div>
             </div>
                 
</asp:Content>

