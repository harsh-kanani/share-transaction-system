<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="replyques.aspx.vb" Inherits="admin_replyques" %>

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
                             Pending Questions
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Show Questions" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Question id</th>
                                            <th>Question Date</th> 
                                            <th>regid</th>
                                            <th>Questions</th>
                                            <th>Answer</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptquestion" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblqueid" runat="server" Text='<%# eval("questionid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblquedate" runat="server" Text='<%# eval("questiondate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblregid" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblquestiion" runat="server" Text='<%# eval("question") %>'></asp:Label></td>
                                           
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("questionid") %>'><i class="fa fa-reply">&nbsp;&nbsp;Reply</i></asp:LinkButton></td>
                                            
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
                                        <div class="title">Question Replay</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    
                                        
                                         <div class="form-group">
                                            
                                            <asp:TextBox ID="txtqueid" class="form-control" ReadOnly="true" runat="server" Visible="false"></asp:TextBox>
                                        </div>

                                        

                                        <div class="form-group">
                                            <label for="exampleInputName2">Question</label>
                                            <asp:TextBox ID="txtquestion" class="form-control" placeholder="Enter Question" runat="server" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                        </div>
                                                                         
                                        
                                        
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Answer</label>
                                            <asp:TextBox ID="txtanswer" class="form-control" 
                                                placeholder="Enter Answer" runat="server" Rows="2" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtanswer" ForeColor="Red" ErrorMessage="Enter Answer" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                      
                                      
                                         <div class="form-group">
                                            <label for="exampleInputEmail2">Answer By</label>
                                            <asp:TextBox ID="txtansby" class="form-control" 
                                                placeholder="Enter Answer By" runat="server" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtansby" ErrorMessage="Enter answer by" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                                                              

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        <asp:Button ID="btncan" runat="server" class="btn btn-danger"  Text="Cancel" CausesValidation="False" />

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
                             Question List
                             <div style="text-align:right">
                                 <asp:Button ID="btnans" runat="server" Text="Pending Answer" class="btn btn-danger" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Question id</th>
                                            <th>Question Date</th>
                                            <th>regid</th>
                                            <th>Questions</th>
                                            <th>Answer</th>
                                            <th>Answer By</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptshow" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblqueid" runat="server" Text='<%# eval("questionid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblquedate" runat="server" Text='<%# eval("questiondate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblregid" runat="server" Text='<%# eval("regid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblquestiion" runat="server" Text='<%# eval("question") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblans" runat="server" Text='<%# eval("answer") %>'></asp:Label></td>
                                             <td><asp:Label ID="lblansby" runat="server" Text='<%# eval("answerby") %>'></asp:Label></td>
                                            
                                            
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

