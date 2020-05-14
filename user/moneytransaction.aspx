<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="moneytransaction.aspx.vb" Inherits="user_moneytransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <<%--div class="contact" style="background-color:rgb(247, 247, 247)">
<div class="container">
			<h3>Transfer Money
           <i class="fa fa-clipboard"></i></h3>
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
                 <h2>Money Transaction
                 <i class="fa fa-clipboard"></i></h2>
           </div>
       </div>
       
    <div class="row">
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
        <asp:DropDownList ID="ddlist" runat="server" class="form-control">
        <asp:ListItem>Demat To Bank</asp:ListItem>
        <asp:ListItem>Bank To Demat</asp:ListItem>
        </asp:DropDownList>


    
    </div>
    <div>
        <asp:Button ID="btnshow" runat="server" Text="Show" class="btn btn-primary"/>
    </div>
    </div>
             </div>
   </div>
      <div class="contact">
        <div class="container">
       
    <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Demat Account No</th>
                                            <th>Bank Account No</th>
                                            <th>Transaction Date</th>
                                            <th>Ammount</th>
                                            <th>From</th>
                                            <th>To</th>

                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <asp:Repeater ID="reptmoneytrans" runat="server">
                                            <ItemTemplate>
                                            <tr class="odd gradeX">   
                                            <td><asp:Label ID="lblcmpid" runat="server" Text='<%# eval("dematid") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcmpnm" runat="server" Text='<%# eval("bankaccno") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblshortnm" runat="server" Text='<%# eval("transdate") %>'></asp:Label></td>
                                            <td><asp:Label ID="lbladdress" runat="server" Text='<%# eval("ammount") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblcityid" runat="server" Text='<%# eval("transfrom") %>'></asp:Label></td>
                                            <td><asp:Label ID="lblpincode" runat="server" Text='<%# eval("transto") %>'></asp:Label></td>

                                            
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

