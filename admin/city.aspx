<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="city.aspx.vb" Inherits="admin_city" %>

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
                             City Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>City id</th>
                                            <th>City Name</th>      
                                            <th>Pincode</th>
                                            <th>State</th>
                                            <th>Delete</th>
                                            <th>Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptcity" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblcityid" runat="server" Text='<%# eval("cityid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcitynm" runat="server" Text='<%# eval("cityname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblpincode" runat="server" Text='<%# eval("pincode") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblstateid" runat="server" Text='<%# eval("statename") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" CommandArgument='<%# eval("cityid") %>'><center><i class="fa fa-trash-o"></center></i></asp:LinkButton></td>
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("cityid") %>'><center><i class="fa fa-pencil"></i></center></asp:LinkButton></td>
                                            
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
                                        <div class="title">City Details</div>
                                    </div>
                                </div>
                                <div class="panel-body">

                                         <div class="form-group">
                                    <%--        <label for="exampleInputName2">City Id</label>--%>
                                            <asp:TextBox ID="txtcityid" class="form-control" ReadOnly="true" Visible=false  runat="server"></asp:TextBox>

                                        </div>

                                         

                                        <div class="form-group">
                                            <label for="exampleInputName2">City Name</label>
                                            <asp:TextBox ID="txtcitynnm" class="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="valcityname" runat="server" ErrorMessage="Enter only alpha" ControlToValidate="txtcitynnm" ClientValidationFunction="onlyalpha" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="valcitynamereq" runat="server" ForeColor="Red" ErrorMessage="Enter city name" ControlToValidate="txtcitynnm" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>     
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Pincode</label>
                                            <asp:TextBox ID="txtpincode" class="form-control" placeholder="Enter Pincode" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="valpincode" runat="server" ErrorMessage="invalid pincode" ControlToValidate="txtpincode" ClientValidationFunction="chkpinlen" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="valpincodereq" runat="server" ForeColor="Red" ErrorMessage="Enter Pincode" ControlToValidate="txtpincode" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                      
                                      
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">State Name</label>
                                            <asp:DropDownList ID="ddliststate" runat="server" class="form-control" data-live-search="true">
                                            </asp:DropDownList>
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
           </div>
      </div>
          </div>  
             <div class="col-sm-12">
			         <footer><p>All right reserved. © 2018 Share World.</p>
				
        
		    		</footer>
		         </div>

   </div>
</div>
</asp:Content>

