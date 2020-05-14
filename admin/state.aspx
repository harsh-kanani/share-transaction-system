<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="state.aspx.vb" Inherits="admin_country" %>

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
                             State
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>State id</th>
                                            <th>State Name</th>
                                            <th>Delete</th>
                                            <th>Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptstate" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblnewsid" runat="server" Text='<%# eval("stateid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblnewsdate" runat="server" Text='<%# eval("statename") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="ln" runat="server" CommandName="delete" CommandArgument='<%# eval("stateid") %>'>Delete</asp:LinkButton></td>
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("stateid") %>'>Update</asp:LinkButton></td>
                                            
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
                                        <div class="title">State</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form class="form-inline">
                                        
                                         <div class="form-group">
                                           <%-- <label for="exampleInputName2">state id</label>--%>
                                            <asp:TextBox ID="txtstid" class="form-control" ReadOnly="true" Visible="false"  runat="server" ></asp:TextBox>
                                        </div>

                                        

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">State Name</label>
                                            <asp:TextBox ID="txtstnm" class="form-control" placeholder="State Name" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtstnm" ForeColor="Red" ErrorMessage="Enter only Alpha" ClientValidationFunction="onlyalpha" Display="Dynamic"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtstnm"   ForeColor="Red"  runat="server" ErrorMessage="State Name can not be null" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                                                              

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        <asp:Button ID="btnreset" runat="server" class="btn btn-danger" Text="Reset" />

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

