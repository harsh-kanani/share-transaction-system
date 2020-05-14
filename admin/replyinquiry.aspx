<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="replyinquiry.aspx.vb" Inherits="admin_replyinquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page-wrapper">
   <div id="page-inner">  
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
             <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             News Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnshow" runat="server" Text="Show Inquiry Data" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Inquiry Date</th>
                                            <th>Name</th>
                                            <th>Contact No</th> 
                                            <th>Email</th>
                                            <th>Detail</th>
                                            <th>User Name</th>
                                                                                      
                                            <th>Reply</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptinq" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("inqdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdate" runat="server" Text='<%# eval("name") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("contactno") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdetail" runat="server" Text='<%# eval("emailid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewstype" runat="server" Text='<%# eval("inqdetail") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsby" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                            
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="insert"  CommandArgument='<%# eval("inqid") %>'>Reply</asp:LinkButton></td>
                                            
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
                                        <div class="title">Reply Inquiry</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                     <div class="form-group">
                                            <label>Inquiry Detail</label>
                                            <asp:TextBox ID="txtinqdetail" class="form-control" runat="server" ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label>Reply</label>
                                            <asp:TextBox ID="txtreply" class="form-control" runat="server" 
                                                     placeholder="Enter Reply" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Reply" ForeColor="#CC0000" ControlToValidate="txtreply"></asp:RequiredFieldValidator>
                                        </div>
                                                                         
                                        <asp:TextBox ID="txtid" class="form-control" runat="server" Visible="false"></asp:TextBox>
                                        
                                                  
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
                             News Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnpending" runat="server" Text="Pending Inquiry" class="btn btn-danger" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Inquiry Date</th>
                                            <th>Name</th>
                                            <th>Contact No</th> 
                                            <th>Email</th>
                                            <th>Detail</th>
                                          
                                            <th>User Name</th>
                                                                                      
                                            <th>Reply</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptshow" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("inqdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdate" runat="server" Text='<%# eval("name") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblheading" runat="server" Text='<%# eval("contactno") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdetail" runat="server" Text='<%# eval("emailid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewstype" runat="server" Text='<%# eval("inqdetail") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsby" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                            
                                             <td><asp:Label ID="Label2" runat="server" Text='<%# eval("replay") %>'></asp:Label></td>
                                            
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
    </div>
</div>

</asp:Content>

