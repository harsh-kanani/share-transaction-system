Imports System.Data
Imports System.Data.SqlClient

Partial Class user_sharetransaction
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

        Dim link As String = "../user/sharetransaction.aspx"
        Dim query As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("shareholder.aspx")

        End If
      
        query = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If

        If ddlist.SelectedValue = "Buy" Then
            Dim trans As String = "buy"
            Dim sts As String = "successful"
            Call buy(trans, sts)
        End If
        
       
    End Sub

    Protected Sub btntrans_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btntrans.Click
        If ddlist.SelectedValue = "Sell" Then
            Dim trans As String = "sell"
            Dim sts As String = "successful"
            Call sell(trans, sts)
        End If
    End Sub

    Protected Sub btnpending_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnpending.Click
        If ddlist.SelectedValue = "Buy" Then
            Dim trans As String = "buy"
            Dim sts As String = "pending"
            Call buy(trans, sts)
        End If
        If ddlist.SelectedValue = "Sell" Then
            Dim trans As String = "sell"
            Dim sts As String = "pending"
            Call sell(trans, sts)
        End If
    End Sub

    Private sub buy(ByVal trans As String, ByVal sts As String)
        Dim query As String
        Query = "select * from vwsharetransaction where regid='" & Session("regid") & "' and transtype='" & trans & "' and status='" & sts & "'"
        reptsharetran.DataSource = dc.gettable(Query)
        reptsharetran.DataBind()
    End Sub

    Private Sub sell(ByVal trans As String, ByVal sts As String)
        Dim query As String
        query = "select * from vwsharetransaction where regid='" & Session("regid") & "' and transtype='" & trans & "' and status='" & sts & "'"
        reptsharetran.DataSource = dc.gettable(query)
        reptsharetran.DataBind()
    End Sub
End Class
