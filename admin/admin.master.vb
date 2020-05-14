Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'lblunm.Text = Session("username")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("regid") = ""
        Response.Redirect("../main/login.aspx")
    End Sub
End Class

