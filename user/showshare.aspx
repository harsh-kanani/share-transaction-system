<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="showshare.aspx.vb" Inherits="user_showshare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<%--<div class="contact" style="background-color:rgb(247, 247, 247)">
		<div class="container">
			<h3>Show Share
           <%--<i class="fa fa-user"></i></h3>
			<div class="agile_contact_grids">
            </div>
        </div>
</div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">





 <div class="contact">
        <div class="container">
       
       <div class="row">						
           <div class="section-header">
                 <h2>Show Share
                 </h2>
           </div>
       </div>
    <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Share Name</th>
                                            <th>Company Name</th>
                                            <th>Share Type</th>
                                            <th>Buy</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptshowshare" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblcmpid" runat="server" Text='<%# eval("sharename") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("cmpname") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("sharetype") %>'></asp:Label></td>
                                            <td><asp:LinkButton ID="lnkupdate" runat="server" CommandName='<%# eval("sharename") %>' CommandArgument='<%# eval("shareid") %>'>Buy</asp:LinkButton></td>
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
</asp:Content>

