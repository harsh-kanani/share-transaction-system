Imports System.Data
Imports System.Data.SqlClient

Partial Class user_moneytransaction
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

        Dim link As String = "../user/moneytransaction.aspx"
        Dim query As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("shareholder.aspx")

        End If
        query = "select dematid from demat where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("demat.aspx")
        End If
        query = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If
     
       
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click



        If ddlist.SelectedValue = "Demat To Bank" Then
            Dim temp As String = "Demat"
            Call showrept(temp)
            
        End If
        If ddlist.SelectedValue = "Bank To Demat" Then
            Dim temp As String = "Bank"
            Call showrept(temp)
        End If
    End Sub

    Private Sub showrept(ByVal temp As String)
        Dim query As String
        Dim rgid As Integer = Session("regid")
        Query = "select * from moneytransfer where transfrom='" & temp & "' and regid='" & rgid & "'"
        reptmoneytrans.DataSource = dc.gettable(Query)
        reptmoneytrans.DataBind()
    End Sub
End Class
