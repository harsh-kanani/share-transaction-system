Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_replyques
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call getrepeatertable()
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

    End Sub

    Private Sub getrepeatertable()
        Dim sts As String = "pending"
        Dim query As String
        query = "select * from question where status='" & sts & "'"
        reptquestion.DataSource = dc.gettable(query)
        reptquestion.DataBind()

    End Sub

    Protected Sub reptquestion_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptquestion.ItemCommand
        If e.CommandName = "update" Then
            ID = e.CommandArgument
            Session("trans") = "update"
            MultiView1.ActiveViewIndex = 1
            Call reptupdate(ID)
        End If
    End Sub
    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from question where questionid=" & id
        Dim rw As DataRow = dc.getrow(query)

        txtqueid.Text = rw("questionid")

        txtquestion.Text = rw("question")
    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String = ""
        Dim result As Boolean = False
        Dim sts As String = "successful"

        If Session("trans") = "update" Then
            query = "update question set answer='" & txtanswer.Text & "',answerby='" & txtansby.Text & "',status='" & sts & "' where questionid='" & txtqueid.Text & "'"

            MultiView1.ActiveViewIndex = 0
            Call getrepeatertable()
        End If

        result = dc.saverecord(query)
        Call getrepeatertable()

        If result Then
            txtanswer.Text = ""
            txtansby.Text = ""
            Call getrepeatertable()
            lblmsg0.Text = "Successfully send"
        Else
            lblmsg0.Text = "Something Wrong"
        End If

    End Sub


    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        MultiView1.ActiveViewIndex = 2

        Dim query As String
        query = "select * from question"
        reptshow.DataSource = dc.gettable(query)
        reptshow.DataBind()
    End Sub

    Protected Sub btnans_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnans.Click
        MultiView1.ActiveViewIndex = "0"
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        MultiView1.ActiveViewIndex = "0"
    End Sub
End Class
