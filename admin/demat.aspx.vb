Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_demat
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
        query = "select * from demat"
        reptdmat.DataSource = dc.gettable(query)
        reptdmat.DataBind()

    End Sub
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub
    Private Sub clear()
        txtdematid.Text = ""
       
        txtdmtno.Text = ""


        txtopenbalance.Text = ""
        txtregid.Text = ""
        txtcmpnm.Text = ""
        txtdetail.Text = ""

    End Sub


    Protected Sub reptdmat_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptdmat.ItemCommand
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
        query = "delete from demat where dematid=" & id

        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        Session("trans") = "update"
        query = "select * from demat where dematid=" & id
        Dim rw As DataRow = dc.getrow(query)
        MultiView1.ActiveViewIndex = 1
        txtdematid.Text = rw("dematid")

        txtdmtno.Text = rw("dematno")


        txtopenbalance.Text = rw("balance")
        txtregid.Text = rw("regid")
        txtcmpnm.Text = rw("cmpname")
        txtdetail.Text = rw("detail")


    End Sub
    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim result As Boolean = False
        Dim query As String = ""


        If Session("trans") = "update" Then
            query = "update demat set dematno='" & txtdmtno.Text & "',balance='" & txtopenbalance.Text & "',regid='" & txtregid.Text & "',cmpname='" & txtcmpnm.Text & "',detail='" & txtdetail.Text & "' where dematid='" & txtdematid.Text & "'"

            MultiView1.ActiveViewIndex = 0


        End If

        If Session("trans") = "new" Then
            query = "insert into demat(dematopendate,dematno,balance,regid,cmpname,detail) values('" & dc.chgdate(Today.Date) & "','" & txtdmtno.Text & "','" & txtopenbalance.Text & "','" & txtregid.Text & "','" & txtcmpnm.Text & "','" & txtdetail.Text & "')"
            MultiView1.ActiveViewIndex = 0

        End If


        result = dc.saverecord(query)
        Call getrepeatertable()
        If result Then
            lblmsg0.Text = "Successfully Add"
        Else
            lblmsg0.Text = "Record Not Save"
        End If





    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Call clear()
        MultiView1.ActiveViewIndex = "0"
    End Sub
End Class
