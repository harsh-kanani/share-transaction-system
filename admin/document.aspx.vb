Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_document
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call getrepeatertable()
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
    End Sub
    Private Sub getrepeatertable()

        Dim query As String
        query = "select * from document"
        reptdocument.DataSource = dc.gettable(query)
        reptdocument.DataBind()

    End Sub
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub
    Private Sub clear()
        txtdocid.Text = ""

        txtdocnm.Text = ""
        txtdoctype.Text = ""
        txtdocfor.Text = ""

    End Sub

    Protected Sub reptdocument_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptdocument.ItemCommand
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
        query = "delete from document where docid=" & id
        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from document where docid=" & id
        Dim rw As DataRow = dc.getrow(query)

        txtdocid.Text = rw("docid")

        txtdocnm.Text = rw("docname")
        txtdoctype.Text = rw("doctype")
        txtdocfor.Text = rw("docfor")




    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String = ""
        Dim result As Boolean = False

        If Session("trans") = "update" Then
            query = "update document set docname='" & txtdocnm.Text & "',doctype='" & txtdoctype.Text & "',docfor='" & txtdocfor.Text & "' where docid='" & txtdocid.Text & "'"

            MultiView1.ActiveViewIndex = 0
        End If



        If Session("trans") = "new" Then

            query = "insert into document(docname,doctype,docfor) values('" & txtdocnm.Text & "','" & txtdoctype.Text & "','" & txtdocfor.Text & "')"

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

End Class
