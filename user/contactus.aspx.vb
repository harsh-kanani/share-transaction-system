Imports System.Data
Imports System.Data.SqlClient
Partial Class user_contactus
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim result As Boolean
            Dim dt As String = DateString
            query = "insert into contactus(uname,subject,emailid,message) values('" & txtname.Text & "','" & txtsub.Text & "','" & txtemailid.Text & "','" & txtdetail.Text & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfully Send"
            Else
                lblmsg.Text = "Not Send "
            End If
        Catch ex As Exception
            lblmsg.Text = "something is missing "
        End Try
    End Sub
End Class
