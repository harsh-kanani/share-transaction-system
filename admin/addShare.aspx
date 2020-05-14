<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="addshare.aspx.vb" Inherits="admin_Share" %>

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
                             Share Details
                             <div style="text-align:right">
                                 <asp:Button ID="btnadd" runat="server" Text="Add Record" class="btn btn-primary" /></div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Share id</th>
                                            <th>Share Name</th>
                                            <th>Company Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptshare" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                                <td><asp:Label ID="lblshareid" runat="server" Text='<%# eval("shareid") %>'></asp:Label></td>
                                                <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("sharename") %>'></asp:Label></td>
                                                <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("cmpname") %>'></asp:Label></td>
                                                <td><asp:LinkButton ID="lnkdelete" runat="server" CommandName="delete" class="pull-left" CommandArgument='<%# eval("shareid") %>'><i class="fa fa-trash-o" style="font-size:20px"></i></asp:LinkButton>
                                                <asp:LinkButton ID="lnkupdate" runat="server" CommandName="update" class="pull-right" CommandArgument='<%# eval("shareid") %>'><i class="fa fa-pencil" style="font-size:20px"></i></asp:LinkButton></td>
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
                                        <div class="title">Share Details</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                         <div class="form-group">
                                            <%--<label for="exampleInputName2">Share Id</label>--%>
                                            <asp:TextBox ID="txtshareid" class="form-control" placeholder="Enter Share Id" 
                                                     runat="server" Visible="false"  ReadOnly="True"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputName2">Share Name</label>
                                            <asp:TextBox ID="txtsharenm" class="form-control" placeholder="Enter Share Name" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="valsharename" runat="server" 
                                                ControlToValidate="txtsharenm" ErrorMessage="Enter Share name"
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                           
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Company Name</label>
                                            <asp:DropDownList ID="ddcmplist" runat="server" class="form-control">
                                            </asp:DropDownList>
                                        </div>
                                        <asp:Button ID="btnsub" runat="server" class="btn btn-success" Text="Submit" />
                                        <asp:Button ID="btncan" runat="server" class="btn btn-danger" Text="Cancel" CausesValidation="False" />

                                         
                                    
                                </div>
                            </div>
                        </div>
                    </div>
        </asp:View>


    </asp:MultiView>
    <div class="col-sm-12">
			        <footer>
                    <p>All right reserved. © 2018 Share World.</p>
		    		</footer>
		         </div>
    </div>
    </div>

</asp:Content>

