<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="sharetransaction.aspx.vb" Inherits="user_sharetransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="contact">
<div class="container">
<div class="row">						
           <div class="section-header">
                 <h2>Share Transaction
                </h2>
           </div>
       </div>

       <div class="row">
            <div class="col-md-12">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="margin-bottom:20px">
           <asp:DropDownList ID="ddlist" runat="server" class="form-control">
               <asp:ListItem>Buy</asp:ListItem>
               <asp:ListItem>Sell</asp:ListItem>
                    
           </asp:DropDownList>
            </div>
           <div class="col-md-4">
                <asp:Button ID="btntrans" runat="server" Text="Show" class="btn btn-outline-info"/>
            </div>
      
       </div>
       </div>
       <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="pull-right" style="margin:20px 20px 0 0">
                             <asp:Button ID="btnpending" runat="server" Text="Pending" class="btn btn-outline-danger"/>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Transaction Date</th>
                                            <th>Sharename</th>
                                            <th>Transaction Type</th>
                                            <th>Price</th>
                                            <th>Qty</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptsharetran" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblcmpid" runat="server" Text='<%# eval("trandate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("sharename") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("transtype") %>'></asp:Label></td>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%# eval("price") %>'></asp:Label></td>
                                            <td><asp:Label ID="Label2" runat="server" Text='<%# eval("qty") %>'></asp:Label></td>
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

</asp:Content>

