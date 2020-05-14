Imports System.Data
Imports System.Data.SqlClient

Partial Class user_question
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    

   
    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim result As Boolean
            Dim dt As String = dc.chgdate(Today.Date)
            Dim rgid As Integer = Session("regid")
            Dim sts As String = "pending"

            query = "insert into question(questiondate,question,regid,status) values('" & dt & "','" & txtquestion.Text & "','" & rgid & "','" & sts & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfully Send"
                txtquestion.Text = ""
            Else
                lblmsg.Text = "Not send"

            End If
        Catch ex As Exception
            lblmsg.Text = "Not send"
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Dim query As String
        Dim rgid As Integer = Session("regid")
        query = "select * from question where regid=" & rgid
        reptquestion.DataSource = dc.gettable(query)
        reptquestion.DataBind()
      
    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtquestion.Text = ""
    End Sub
End Class
