Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_home
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        lblunm.Text = Session("username")
        Call num()
        If IsPostBack = True Then
            Call num()
        End If

    End Sub
    Protected Sub num()
        Dim query As String
        Dim st As String = "pending"
        query = "select count(tranid) from vwshtrans where status='" & st & "'"
        lblsr.Text = dc.checkrowdata(query)

        Dim query1 As String
        query1 = "select * from question where status='" & st & "'"
        lblq.Text = dc.checkrowdata(query1)
    End Sub
End Class
