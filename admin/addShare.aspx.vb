Imports System.Data
Imports System.Data.SqlClient


Partial Class admin_Share
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

        Call getrepeatertable()
        If IsPostBack = False Then
            Dim qry As String

            qry = "select * from company"
            ddcmplist.DataSource = dc.gettable(qry)
            ddcmplist.DataMember = "company"
            ddcmplist.DataTextField = "cmpname"
            ddcmplist.DataValueField = "cmpid"
            ddcmplist.DataBind()
        End If
    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select * from vwshare"
        reptshare.DataSource = dc.gettable(query)
        reptshare.DataBind()

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub

    Private Sub clear()
        txtshareid.Text = ""
        txtsharenm.Text = ""
    End Sub

    Protected Sub reptshare_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptshare.ItemCommand
        Dim id As Integer
        If e.CommandName = "delete" Then
            id = e.CommandArgument
            Call deleterecord(id)
        End If

        If e.CommandName = "update" Then
            id = e.CommandArgument
            MultiView1.ActiveViewIndex = 1
            Session("trans") = "update"
            Call reptupdate(id)

        End If
    End Sub

    Private Sub deleterecord(ByVal id As Integer)
        Dim query As String
        query = "delete from share where shareid=" & id

        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        Session("trans") = "update"
        query = "select * from share where shareid=" & id
        Dim rw As DataRow = dc.getrow(query)
        MultiView1.ActiveViewIndex = 1
        txtshareid.Text = rw("shareid")
        txtsharenm.Text = rw("sharename")   
        ddcmplist.SelectedValue = rw("cmpid")


       
    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim result As Boolean = False
        Dim query As String = ""
        If Session("trans") = "update" Then
            query = "update share set sharename='" & txtsharenm.Text & "',cmpid='" & ddcmplist.SelectedValue & "' where shareid='" & txtshareid.Text & "'"
            MultiView1.ActiveViewIndex = 0
        End If

        If Session("trans") = "new" Then
            query = "insert into share(sharename,cmpid) values('" & txtsharenm.Text & "','" & ddcmplist.SelectedValue & "')"
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

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        MultiView1.ActiveViewIndex = "0"
        Call clear()
    End Sub
End Class
