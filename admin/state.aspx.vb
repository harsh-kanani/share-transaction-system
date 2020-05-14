Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_country
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Call getrepeatertable()
    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select * from state"
        reptstate.DataSource = dc.gettable(query)
        reptstate.DataBind()

    End Sub


    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub

    Private Sub clear()
        txtstid.Text = ""
        txtstnm.Text = ""
    End Sub


    Protected Sub reptstate_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptstate.ItemCommand
        Dim id As Integer
        If e.CommandName = "update" Then
            id = e.CommandArgument
            Session("trans") = "update"
            MultiView1.ActiveViewIndex = 1
            Call reptupdate(id)
        End If

        If e.CommandName = "delete" Then
            id = e.CommandArgument
            Call deleterecord(id)
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from state where stateid=" & id
        Dim rw As DataRow = dc.getrow(query)

        txtstid.Text = rw("stateid")
        txtstnm.Text = rw("statename")




    End Sub
    Private Sub deleterecord(ByVal id As Integer)
        Dim query As String
        query = "delete from state where stateid=" & id
        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "This Recod Already in City"
        End If
    End Sub


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String = ""
        Dim result As Boolean = False

        If Session("trans") = "update" Then
            query = "update state set statename='" & txtstnm.Text & "' where stateid='" & txtstid.Text & "'"

            MultiView1.ActiveViewIndex = 0
        End If



        If Session("trans") = "new" Then

            query = "insert into state(statename) values('" & txtstnm.Text & "')"

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
