Imports System.Data
Imports System.Data.SqlClient


Partial Class user_changepwd
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Dim dc1 As New dataclass


    Private Function getpwd() As String
        Dim rgid As Integer = Session("regid")
        Dim query As String

        Dim rw As DataRow
        Dim pwd As String

        query = "select password from registration where regid=" & rgid
        rw = dc.getrow(query)

        pwd = rw("password")

        Return pwd

    End Function

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim pass As String

        pass = getpwd()
        Dim result As Boolean


        Dim rgid As String = Session("regid")
        If pass = txtoldpwd.Text Then
            Dim query As String
            query = "update registration set password='" & txtnewpwd.Text & "' where regid='" & rgid & "'"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfully Change"
            End If


        Else
            lblmsg.Text = "Your Old Password Is wrong"
        End If
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")

        End If
    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtoldpwd.Text = ""
        txtnewpwd.Text = ""
        txtconformpwd.Text = ""

    End Sub
End Class
