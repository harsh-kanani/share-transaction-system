Imports System.Data
Imports System.Data.SqlClient

Partial Class main_login
    Inherits System.Web.UI.Page
    Dim dc As New dataclass



    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            query = "select regid,username,password,usertype,emailid from registration where username='" & txtuname.Text & "'"
            Dim rw As DataRow
            rw = dc.getrow(query)

            If txtpwd.Text = rw("password") Then
                Session("regid") = rw("regid")
                Session("email") = rw("emailid")
                Session("username") = rw("username")
                If rw("usertype") = "admin" Then
                    Response.Redirect("../admin/home.aspx")
                End If
                If rw("usertype") = "user" Then
                    Response.Redirect("../user/userhome.aspx")
                End If
            Else
                lblmsg.Text = "Invalid Password or user name"
                txtpwd.Text = ""
                txtpwd.Focus()

            End If

        Catch ex As Exception
            lblmsg.Text = "Invalid user name"
        End Try
    End Sub


    Protected Sub fpw_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles fpw.Click
        Response.Redirect("forgotpassword.aspx")
    End Sub
End Class
