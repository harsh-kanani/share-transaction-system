Imports System.Data
Imports System.Data.SqlClient

Partial Class user_email
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Try
            Dim query As String
            Dim result As Boolean

            Dim dt As String = DateString

            query = "insert into email(emaildate,emailto,emailfrom,subject,detail,regid) values('" & dt & "','" & txtemailto.Text & "','" & txtemailfrom.Text & "','" & txtsubject.Text & "','" & txtdetail.Text & "','" & txtregid.Text & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfuly Save"
            Else
                lblmsg.Text = "Record Not Save"
            End If
        Catch ex As Exception

        End Try
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        txtemailfrom.Text = Session("email")
        txtregid.Text = Session("regid")
    End Sub
End Class
