<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="companydetails.aspx.vb" Inherits="admin_companydetails" %>

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
                             Company Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                           
                                            <th>Company Name</th> 
                                            <th>Address</th>
                                            <th>City</th>
                                            <th>Pincode</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Website</th>
                                            <th>Contact Person</th>
                                            <th>Action</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptcmp" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("cmpname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbladdress" runat="server" Text='<%# eval("address") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcityid" runat="server" Text='<%# eval("cityname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblpincode" runat="server" Text='<%# eval("pincode") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblphone" runat="server" Text='<%# eval("phone") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblemail" runat="server" Text='<%# eval("email") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblwebsite" runat="server" Text='<%# eval("website") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblconperson" runat="server" Text='<%# eval("contactperson") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" CommandArgument='<%# eval("cmpid") %>' class="pull-left"><i class="fa fa-trash-o" style="font-size:20px"></i></asp:LinkButton>
                                          <asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" CommandArgument='<%# eval("cmpid") %>' class="pull-right"><i class="fa fa-pencil" style="font-size:20px"></i></asp:LinkButton></td>
                                            
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
                                  

                                         <div class="form-group">
                                            <asp:TextBox ID="txtcmpid" class="form-control" placeholder="Enter Company Id" 
                                                 runat="server" ReadOnly="True" Visible="false"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputName2">Company Name</label>
                                            <asp:TextBox ID="txtcmpnm" class="form-control" placeholder="Enter Company Name" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="valcompanynm" runat="server" ControlToValidate="txtcmpnm" ForeColor="Red" ErrorMessage="Enter only Alpha" Display="Dynamic" ClientValidationFunction="onlyalpha"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="valreqcmpnm" runat="server" ControlToValidate="txtcmpnm" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Company name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Short Name</label>
                                            <asp:TextBox ID="txtshortnm" class="form-control" placeholder="Enter Short Name" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtshortnm" ForeColor="Red" ErrorMessage="Enter only Alpha" Display="Dynamic" ClientValidationFunction="onlyalpha"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="txtshortnm" ForeColor="Red" ErrorMessage="Enter Short name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Address</label>
                                            <asp:TextBox ID="txtaddress" class="form-control" placeholder="Enter Address" 
                                                runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="txtshortnm" ForeColor="Red" ErrorMessage="Enter Addreaa"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">City Name</label>
                                            <asp:DropDownList ID="ddcity" runat="server" class="form-control">
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Pincode</label>
                                            <asp:TextBox ID="txtpincode" class="form-control" placeholder="Enter Pincode" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtpincode" ForeColor="Red"
                                             ErrorMessage="Enter valid pincode" Display="Dynamic" ClientValidationFunction="chkpinlen"></asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                             ControlToValidate="txtpincode" ForeColor="Red" ErrorMessage="Enter Pincode"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Fax</label>
                                            <asp:TextBox ID="txtfax" class="form-control" placeholder="Enter Fax Number" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtfax" ForeColor="Red" ErrorMessage="Enter valid number e.g.(9988668866)" Display="Dynamic" ClientValidationFunction="chkphonelen"></asp:CustomValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Phone No</label>
                                            <asp:TextBox ID="txtphone" class="form-control" placeholder="Enter Phone Number" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txtphone" ForeColor="Red" ErrorMessage="Enter valid number e.g.(9988668866)" Display="Dynamic" ClientValidationFunction="chkphonelen"></asp:CustomValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Email</label>
                                            <asp:TextBox ID="txtemail" class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="enter valid email" Display="Dynamic" ClientValidationFunction="checkmail"></asp:CustomValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Website</label>
                                            <asp:TextBox ID="txtwebsite" class="form-control" placeholder="Enter Website" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Contact Person</label>
                                            <asp:TextBox ID="txtconperson" class="form-control" placeholder="Enter Contact Person Name" runat="server"></asp:TextBox>
                                        </div>

                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        <asp:Button ID="btncancel" runat="server" class="btn btn-danger" Text="Cancel" CausesValidation="False" />
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

