Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_companydetails
    Inherits System.Web.UI.Page

    Dim dc As New dataclass



    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim result As Boolean = False
        Dim query As String = ""
        If Session("trans") = "update" Then
            query = "update company set cmpname='" & txtcmpnm.Text & "',shortname='" & txtshortnm.Text & "',address='" & txtaddress.Text & "',cityid='" & ddcity.SelectedValue & "',pincode='" & txtpincode.Text & "',fax='" & txtfax.Text & "',phone='" & txtphone.Text & "',email='" & txtemail.Text & "',website='" & txtwebsite.Text & "',contactperson='" & txtconperson.Text & "' where cmpid='" & txtcmpid.Text & "'"

        End If

        If Session("trans") = "new" Then
            query = "insert into company(cmpname,shortname,address,cityid,pincode,fax,phone,email,website,contactperson) values('" & txtcmpnm.Text & "','" & txtshortnm.Text & "','" & txtaddress.Text & "','" & ddcity.SelectedValue & "','" & txtpincode.Text & "','" & txtfax.Text & "','" & txtphone.Text & "','" & txtemail.Text & "','" & txtwebsite.Text & "','" & txtconperson.Text & "')"

        End If
        result = dc.saverecord(query)
        Call getrepeatertable()
        MultiView1.ActiveViewIndex = 0
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
        If IsPostBack = False Then
            Dim qry As String
            qry = "select * from city"
            ddcity.DataSource = dc.gettable(qry)
            ddcity.DataMember = "city"
            ddcity.DataTextField = "cityname"
            ddcity.DataValueField = "cityid"
            ddcity.DataBind()
        End If


    End Sub

    Private Sub getrepeatertable()

        Dim query As String
        query = "select cmpid,cmpname,shortname,address,pincode,fax,phone,email,website,contactperson,cityname from vwcompany"
        reptcmp.DataSource = dc.gettable(query)
        reptcmp.DataBind()

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call clear()
        Session("trans") = "new"
        MultiView1.ActiveViewIndex = 1

    End Sub

    Private Sub clear()
        txtcmpid.Text = ""
        txtcmpnm.Text = ""
        txtshortnm.Text = ""
        txtaddress.Text = ""
        ddcity.SelectedIndex = 0
        txtpincode.Text = ""
        txtfax.Text = ""
        txtphone.Text = ""
        txtemail.Text = ""
        txtwebsite.Text = ""
        txtconperson.Text = ""

    End Sub
    Protected Sub reptcmp_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptcmp.ItemCommand
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
        query = "delete from company where cmpid=" & id

        If (dc.saverecord(query)) Then

            Call getrepeatertable()
        Else
            lblmsg0.Text = "record not delete"
        End If
    End Sub

    Private Sub reptupdate(ByVal id As Integer)
        Dim query As String
        Session("trans") = "update"
        query = "select * from company where cmpid=" & id
        Dim rw As DataRow = dc.getrow(query)
        MultiView1.ActiveViewIndex = 1
        txtcmpid.Text = rw("cmpid")
        txtcmpnm.Text = rw("cmpname")
        txtshortnm.Text = rw("shortname")
        txtaddress.Text = rw("address")
        ddcity.SelectedValue = rw("cityid")
        txtpincode.Text = rw("pincode")
        txtfax.Text = rw("fax")
        txtphone.Text = rw("phone")
        txtemail.Text = rw("email")
        txtwebsite.Text = rw("website")
        txtconperson.Text = rw("contactperson")
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        MultiView1.ActiveViewIndex = "0"
        Call clear()
    End Sub
End Class
