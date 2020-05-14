Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_feedback
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        lblunm.Text = Session("username")
        Call getrepeatertable()
    End Sub
    Private Sub getrepeatertable()
        Dim query As String
        query = "select * from feedback"
        reptdocument.DataSource = dc.gettable(query)
        reptdocument.DataBind()
    End Sub
End Class
