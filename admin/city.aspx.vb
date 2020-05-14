Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_city
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call getrepeatertable()
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        Else
            If IsPostBack = False Then
                Dim qry As String

                qry = "select * from state"
                ddliststate.DataSource = dc.gettable(qry)
                ddliststate.DataMember = "state"
                ddliststate.DataTextField = "statename"
                ddliststate.DataValueField = "stateid"
                ddliststate.DataBind()
            End If
        End If
        

    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select * from vwcity1"
        reptcity.DataSource = dc.gettable(query)
        reptcity.DataBind()

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub

    Private Sub clear()
        txtcityid.Text = ""
        txtcitynnm.Text = ""
        txtpincode.Text = ""

        ddliststate.SelectedIndex = 0
       

    End Sub

    Protected Sub reptcity_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptcity.ItemCommand
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
        query = "delete from city where cityid=" & id
        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub
    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        query = "select * from vwcity1 where cityid=" & id
        Dim rw As DataRow = dc.getrow(query)

        txtcityid.Text = rw("cityid")

        txtcitynnm.Text = rw("cityname")
        txtpincode.Text = rw("pincode")
        ddliststate.SelectedValue = rw("stateid")




    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim query As String = ""
        Dim result As Boolean = False

        If Session("trans") = "update" Then
            query = "update city set cityname='" & txtcitynnm.Text & "',pincode='" & txtpincode.Text & "',stateid='" & ddliststate.SelectedValue & "' where cityid='" & txtcityid.Text & "'"

            MultiView1.ActiveViewIndex = 0
        End If



        If Session("trans") = "new" Then

            query = "insert into city(cityname,pincode,stateid) values('" & txtcitynnm.Text & "','" & txtpincode.Text & "','" & ddliststate.SelectedValue & "')"

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

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        MultiView1.ActiveViewIndex = "0"
        Call clear()
    End Sub
End Class
