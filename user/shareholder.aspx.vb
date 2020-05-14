Imports System.Data
Imports System.Data.SqlClient

Partial Class user_shareholder
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Try
            Dim query As String
            Dim result As Boolean
            Dim link As String = Session("link")
            Dim rgid As Integer = Session("regid")
            Dim path As String = Server.MapPath("uimg")

            query = "insert into shareholder(holdername,uimg,address,city,pincode,mobile,email,regid) values('" & txtholdnm.Text & "','" & flphoto.FileName & "','" & txtaddress.Text & "','" & ddcity.SelectedValue & "','" & txtpincode.Text & "','" & txtmobile.Text & "','" & txtemail.Text & "','" & rgid & "')"
            result = dc.saverecord(query)
            If result Then
                flphoto.SaveAs(path & "\\" & flphoto.FileName)
                lblmsg.Text = "Successfully Submit"
                Response.Redirect(link)
            Else
                lblmsg.Text = "Not send"
            End If
        Catch ex As Exception
            lblmsg.Text = "Not send"
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtaddress.Text = ""
        txtemail.Text = ""
        txtholdnm.Text = ""
        txtmobile.Text = ""
        txtpincode.Text = ""
    End Sub
End Class
