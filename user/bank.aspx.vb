Imports System.Data
Imports System.Data.SqlClient

Partial Class user_bank
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim regid As Integer = Session("regid")
            Dim query As String
            Dim result As Boolean
            Dim link As String = Session("link")

            query = "insert into bank(bankname,regid,branchname,accountno,accounttype,ifccode,address,city,pincode,phone,email) values('" & txtbanknm.Text & "','" & regid & "','" & txtbrnchname.Text & "','" & txtacno.Text & "','" & ddactype.SelectedValue & "','" & txtifccode.Text & "','" & Txtaddress.Text & "','" & ddcitylist.SelectedValue & "','" & txtpincode.Text & "','" & txtphone.Text & "','" & txtemail.Text & "')"
            result = dc.saverecord(query)
            If result Then
                lblmsg.Text = "Successfully Save"
                Call clear()
                Response.Redirect(link)
            Else
                lblmsg.Text = "Record Not Save"
            End If

        Catch ex As Exception

        End Try
       
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

        Dim link As String = "../user/bank.aspx"
        Dim query As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("shareholder.aspx")

        End If
     
        query = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If

        If IsPostBack = False Then
            Dim qry As String

            qry = "select * from city"
            ddcitylist.DataSource = dc.gettable(qry)
            ddcitylist.DataMember = "city"
            ddcitylist.DataTextField = "cityname"
            ddcitylist.DataValueField = "cityid"
            ddcitylist.DataBind()
        End If
    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        Call clear()
    End Sub

    Private Sub clear()
        txtbanknm.Text = ""
        txtbrnchname.Text = ""
        txtacno.Text = ""
        ddactype.SelectedIndex = 0
        txtifccode.Text = ""
        Txtaddress.Text = ""
        ddcitylist.SelectedIndex = 0
        txtpincode.Text = ""
        txtphone.Text = ""
        txtemail.Text = ""
    End Sub
End Class
