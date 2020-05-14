<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="admin_feedback" %>

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
					 <h4><b>User Name:</b> <asp:Label ID="lblunm" runat="server" Text=""></asp:Label></h4>
					</ol> 
									
		</div>
   <div id="page-inner">
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
                                            <th>Feedback Id</th>
                                            <th>Feedback Date</th>           
                                            <th>Document For</th>
                                            <th>Details</th>
                                            <th>Stars</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptdocument" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lbldocid" runat="server" Text='<%# eval("fbid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldocnm" runat="server" Text='<%# eval("fbdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldoctype" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbldocfor" runat="server" Text='<%# eval("details") %>'></asp:Label></td>
                                             <td><asp:Label ID="Label1" runat="server" Text='<%# eval("stars") %>'></asp:Label></td>
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
        </div>
    </div>
 </div>
    
</asp:Content>

