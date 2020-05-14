<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" AutoEventWireup="false" CodeFile="sharerequest.aspx.vb" Inherits="admin_showtrans" %>

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
                            Share Request
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>User Name</th>
                                            <th>Share Name</th>
                                            <th>Buy/Sell</th>
                                            <th>Price</th>
                                            <th>Qty</th>
                                            <th>Brockerage</th>
                                            <th>Accept</th>
                                            <th>Decline</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptsharetrans" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                                <td><asp:Label ID="lblshareid" runat="server" Text='<%# eval("trandate") %>'></asp:Label></td>
                                                <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("username") %>'></asp:Label></td>
                                                <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("sharename") %>'></asp:Label></td>
                                                <td><asp:Label ID="lbladdress" runat="server" Text='<%# eval("transtype") %>'></asp:Label></td>
                                                <td><asp:Label ID="lblcityid" runat="server" Text='<%# eval("price") %>'></asp:Label></td>
                                                <td><asp:Label ID="Label1" runat="server" Text='<%# eval("qty") %>'></asp:Label></td>
                                                <td><asp:Label ID="Label2" runat="server" Text='<%# eval("brockerage") %>'></asp:Label></td>
                                                <td><asp:LinkButton ID="lnkaccept" runat="server" CommandName="accept" CommandArgument='<%# eval("tranid") %>'>Accept</asp:LinkButton></td>
                                                <td><asp:LinkButton ID="lnkdel" runat="server" CommandName="accept" CommandArgument='<%# eval("tranid") %>'>Declaine</asp:LinkButton></td>
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

