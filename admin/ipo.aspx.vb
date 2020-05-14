Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_ipo
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String = ""
        Dim result As Boolean = False

        If Session("trans") = "update" Then
            MultiView1.ActiveViewIndex = 0
        End If



        If Session("trans") = "new" Then

            query = "insert into application(appdate,iponame,details) values('" & dc.chgdate(Today.Date) & "','" & txtnewshd.Text & "','" & txtnewsdetails.Text & "')"

            MultiView1.ActiveViewIndex = 0
        End If
        result = dc.saverecord(query)
        Call getrepeatertable()

        If result Then
            lblmsg0.Text = "Successfully Add"
        Else
            lblmsg0.Text = "Something Wrong"
        End If
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call getrepeatertable()
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select appid,convert(varchar,appdate,103) as appdate,iponame,details from application"
        reptnews.DataSource = dc.gettable(query)
        reptnews.DataBind()

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub
    Private Sub clear()
        txtnewshd.Text = ""
        txtnewsdetails.Text = ""
    End Sub





    Protected Sub reptnews_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptnews.ItemCommand
        Dim id As Integer
        If e.CommandName = "delete" Then
            id = e.CommandArgument
            Call deleterecord(id)
        End If

        If e.CommandName = "update" Then
            id = e.CommandArgument
            Session("trans") = "update"
            MultiView1.ActiveViewIndex = 1
            Call reptupdate(id)
        End If
    End Sub

    Private Sub deleterecord(ByVal id As Integer)
        Dim query As String
        query = "delete from application where appid" & id
        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from application where appid=" & id
        Dim rw As DataRow = dc.getrow(query)
        txtnewsid.Text = rw("appid")
        txtnewshd.Text = rw("iponame")
        txtnewsdetails.Text = rw("detail")
    End Sub



    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        MultiView1.ActiveViewIndex = "0"
    End Sub

End Class
