Imports System.Data
Imports System.Data.SqlClient

Partial Class user_user
    Inherits System.Web.UI.MasterPage
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call msgdata()
        lbluname.Text = Session("username")

    End Sub

    Public Sub msgdata()
        Dim query As String
        Dim regid As Integer = Session("regid")
        query = "select * from message where regid=" & regid
        reptmsg.DataSource = dc.gettable(query)
        reptmsg.DataBind()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("regid") = ""
        Response .Redirect ("../main/login.aspx")
    End Sub
End Class

