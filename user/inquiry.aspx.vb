Imports System.Data
Imports System.Data.SqlClient

Partial Class user_inquiry
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim result As Boolean
            Dim dt As String = dc.chgdate(Today.Date)
            Dim status As String = "pending"
            Dim regid As Integer = Session("regid")
            query = "insert into inquary(inqdate,name,contactno,emailid,inqdetail,regid,status) values('" & dt & "','" & txtname.Text & "','" & txtcontactno.Text & "','" & txtemailid.Text & "','" & txtdetail.Text & "','" & regid & "','" & status & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfully Send"
            Else
                lblmsg.Text = "Not Send "
            End If
        Catch ex As Exception
            lblmsg.Text = "Not Send "
        End Try
    
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        txtemailid.Text = Session("email")


        Dim query As String
        Dim rgid As Integer = Session("regid")
        query = "select * from inquary where regid=" & rgid
        reptinq.DataSource = dc.gettable(query)
        reptinq.DataBind()

      
    End Sub


    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtname.Text = ""
        txtemailid.Text = ""
        txtcontactno.Text = ""
        txtdetail.Text = ""

    End Sub
End Class
