Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_service
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
        query = "select * from service"
        reptservice.DataSource = dc.gettable(query)
        reptservice.DataBind()

    End Sub
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub
    Private Sub clear()
        txtserviceid.Text = ""

        txtservicenm.Text = ""
        txtshortnm.Text = ""
        txtdetail.Text = ""
        
    End Sub


    Protected Sub reptservice_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptservice.ItemCommand
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
        query = "delete from service where serviceid=" & id
        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from service where serviceid=" & id
        Dim rw As DataRow = dc.getrow(query)

        txtserviceid.Text = rw("serviceid")

        txtservicenm.Text = rw("servicename")
        txtshortnm.Text = rw("shortname")
        txtdetail.Text = rw("details")
       



    End Sub
    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String = ""
        Dim result As Boolean = False

        If Session("trans") = "update" Then
            query = "update service set servicename='" & txtservicenm.Text & "',shortname='" & txtshortnm.Text & "',details='" & txtdetail.Text & "' where serviceid='" & txtserviceid.Text & "'"

            MultiView1.ActiveViewIndex = 0
        End If



        If Session("trans") = "new" Then

            query = "insert into service(servicename,shortname,details) values('" & txtservicenm.Text & "','" & txtshortnm.Text & "','" & txtdetail.Text & "')"

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

    End Sub
End Class
