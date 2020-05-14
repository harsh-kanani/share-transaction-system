Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_showusers
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call getrepeatertable()
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select convert(varchar,regdate,103) as regdate,username,contactno,emailid,securitycode,usertype from registration"
        reptusers.DataSource = dc.gettable(query)
        reptusers.DataBind()

    End Sub
End Class
