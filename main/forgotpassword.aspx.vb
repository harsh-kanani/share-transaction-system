Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Net

Partial Class main_forgotpassword
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub sendemail(ByVal emailto As String, ByVal subject As String, ByVal detail As String)
        Try
            Dim msg As New MailMessage()
            Dim smtp As New SmtpClient()
            msg.From = New MailAddress("shareworld1924@gmail.com")

            msg.Subject = subject
            msg.Body = detail
            msg.IsBodyHtml = True

            msg.To.Add(New MailAddress(emailto))

            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True

            Dim networkcred As New NetworkCredential()
            networkcred.UserName = "shareworld1924@gmail.com"
            networkcred.Password = "harshjayneel"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = networkcred
            smtp.Port = 587
            smtp.Send(msg)

        Catch ex As Exception
            Console.Write(ex.Message)
        End Try
    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim rw As DataRow

            Dim query As String
            query = "select emailid,password from registration where username='" & txtuname.Text & "'"
            rw = dc.getrow(query)
            Dim emailto As String = rw("emailid")
            Dim subject As String = "Your Password"
            Dim detail As String = rw("password")
            Dim detail2 As String = "Your Password Is:" & detail

            Call sendemail(emailto, subject, detail2)
            lblmsg.Text = "Password Send On Email"
        Catch
            lblmsg.Text = "user name not found"
        End Try
    End Sub
End Class
