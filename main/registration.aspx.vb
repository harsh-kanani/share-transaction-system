Imports System.Data
Imports System.Data.SqlClient

Partial Class main_registration
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim query As String
        Dim utype As String = "user"
        Dim dt As String = dc.chgdate(Today.Date)
        Dim result As Boolean = False

        query = "insert into registration(regdate,username,password,usertype,contactno,emailid,securitycode) values ('" & dt & "','" & txtuname.Text & "','" & txtpwd.Text & "','" & utype & "','" & txtcono.Text & "','" & txtemail.Text & "','" & txtsecode.Text & "')"
        result = dc.saverecord(query)
        If result Then
            Dim query1 As String = ""
            Dim rw As Integer = dc.checkrowdata("select max(regid) from registration")
            Dim regid As Integer = rw
            Dim bal As Integer = 0
            Dim dematid As Integer = (dc.checkrowdata("select max(dematid) from demat") + 1)
            query1 = "insert into demat(dematid,dematopendate,regid,balance) values('" & dematid & "','" & dt & "','" & regid & "','" & bal & "')"
            If dc.saverecord(query1) Then
                Session("regst") = "Registaration Successfully compleate"
                Response.Redirect("login.aspx")
            End If
        Else
            lblmsg.Text = "Username is already used"
        End If




    End Sub
End Class
