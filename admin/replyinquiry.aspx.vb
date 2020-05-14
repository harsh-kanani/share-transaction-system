Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_replyinquiry
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Call getrepeatertable()
    End Sub

    Private Sub getrepeatertable()
        Dim sts As String = "pending"
        Dim query As String
        query = "select * from vwinq where status='" & sts & "'"
        reptinq.DataSource = dc.gettable(query)
        reptinq.DataBind()

    End Sub

    Protected Sub reptinq_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptinq.ItemCommand
        Dim id As Integer = e.CommandArgument
        MultiView1.ActiveViewIndex = "1"
        Call fill(id)
    End Sub
    Private Sub fill(ByVal id As Integer)
        Dim rw As DataRow
        Dim qry As String
        qry = "select * from inquary where inqid='" & id & "'"
        rw = dc.getrow(qry)
        txtinqdetail.Text = rw("inqdetail")
        txtid.Text = id
    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim query As String
        Dim result As Boolean
        Dim sts As String = "successfull"
        query = "update inquary set replay='" & txtreply.Text & "',status='" & sts & "' where inqid='" & txtid.Text & "'"
        result = dc.saverecord(query)
        If result Then
            Call getrepeatertable()
            MultiView1.ActiveViewIndex = "0"

        End If
    End Sub


    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        MultiView1.ActiveViewIndex = "2"
        Dim sts As String = "Successfull"
        Dim query As String
        query = "select * from vwinq where status='" & sts & "'"
        reptshow.DataSource = dc.gettable(query)
        reptshow.DataBind()
    End Sub

    Protected Sub btnpending_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnpending.Click
        MultiView1.ActiveViewIndex = "0"
    End Sub
End Class
