Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_msg
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Dim query As String
        query = "select * from registration"
        reptdmat.DataSource = dc.gettable(query)
        reptdmat.DataBind()
    End Sub

    Protected Sub reptdmat_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptdmat.ItemCommand
     
        txtregid.Text = e.CommandArgument
        MultiView1.ActiveViewIndex = 1

    End Sub

   


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim dt As String = dc.chgdate(Today.Date)
            Dim result As Boolean


            query = "insert into message(msgdate,regid,subject,message) values('" & dt & "','" & txtregid.Text & "','" & txtsubject.Text & "','" & txtmsg.Text & "')"
            result = dc.saverecord(query)
            If result Then

                lblmsg0.Text = "Message Send Successfully"
                MultiView1.ActiveViewIndex = 0
            Else

                lblmsg.Text = "Message Not send"
            End If
        Catch ex As Exception
            lblmsg.Text = "Message Not Send"
        End Try
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        MultiView1.ActiveViewIndex = 2
        Dim query As String
        query = "select * from vwmsg"
        reptmsg.DataSource = dc.gettable(query)
        reptmsg.DataBind()
    End Sub

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        MultiView1.ActiveViewIndex = "0"

    End Sub
End Class
