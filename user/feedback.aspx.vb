Imports System.Data
Imports System.Data.SqlClient

Partial Class user_feedback
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim result As Boolean
            Dim regid As Integer=Session("regid")
            Dim dt As String = dc.chgdate(Today.Date)
            query = "insert into feedback(fbdate,regid,fbfor,details,stars) values('" & dt & "','" & regid & "','" & txtfbfor.Text & "','" & txtdetails.Text & "','" & ddrating.SelectedValue & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfuly Send"
            Else
                lblmsg.Text = "Not Send"
            End If
        Catch ex As Exception
            lblmsg.Text = "Not Send"
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtfbfor.Text = ""
        txtdetails.Text = ""
    End Sub
End Class
