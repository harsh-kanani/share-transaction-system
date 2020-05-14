Imports System.Data
Imports System.Data.SqlClient

Partial Class user_userprofile
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Dim regid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        'If Session("index") = 1 Then
        '    MultiView1.ActiveViewIndex = 1
        'End If
        regid = Session("regid")
        Call reptdata()
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

    Private Sub reptdata()
        Dim query As String
        query = "select * from vwshareholder where regid='" & regid & "'"
        reptprofile.DataSource = dc.gettable(query)
        reptprofile.DataBind()
    End Sub

    'Protected Sub reptprofile_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptprofile.ItemCommand
    '    Dim id As Integer
    '    If e.CommandName = "update" Then
    '        id = e.CommandArgument
    '        'Call upddata(id)
    '        MultiView1.ActiveViewIndex = "1"
    '    End If


    'End Sub

    Private Sub upddata(ByVal id As Integer)
        Try
            Dim query As String
            query = "select * from shareholder where regid=" & id
            Dim rw As DataRow = dc.getrow(query)
            txtid.Text = rw("holderid")
            txtholdnm.Text = rw("holdername")
            txtaddress.Text = rw("address")
            ddcity.SelectedValue = rw("city")
            txtpincode.Text = rw("pincode")
            txtmobile.Text = rw("mobile")
            txtemail.Text = rw("email")
            Session("file") = rw("uimg")
            If rw("gender") = "male" Then
                rdomale.Checked = True
            Else
                rdofemale.Checked = True

            End If
        Catch

        End Try

    End Sub


    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click
        MultiView1.ActiveViewIndex = 1
        Call upddata(regid)
        'Session("trans") = "update"
    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim query As String = ""
        Dim rdo As String = ""
        Dim result As Boolean
        Dim fname As String = ""
        Dim path As String = Server.MapPath("uimg")
        If rdomale.Checked = True Then
            rdo = rdomale.Text
        End If
        If rdofemale.Checked = True Then
            rdo = rdofemale.Text
        End If
        If FileUpload1.FileName = "" Then
            fname = Session("file")
        Else
            fname = FileUpload1.FileName
        End If
        'If Session("trans") = "update" Then
        query = "update shareholder set holdername='" & txtholdnm.Text & "',address='" & txtaddress.Text & "',city='" & ddcity.SelectedValue & "',pincode='" & txtpincode.Text & "',mobile='" & txtmobile.Text & "',email='" & txtemail.Text & "',gender='" & rdo & "',uimg='" & fname & "' where regid=" & regid
        'End If
        'If Session("trans") = "new" Then
        '    query = "insert into shareholder(holdername,address,city,pincode,mobile,email,gender,uimg,regid) values '" & txtholdnm.Text & "','" & txtaddress.Text & "','" & ddcity.SelectedValue & "','" & txtpincode.Text & "','" & txtmobile.Text & "','" & txtemail.Text & "','" & rdo & "','" & fname & "','" & regid & "'"
        'End If

        result = dc.saverecord(query)
        If result Then
            'Session("index") = "0"
            FileUpload1.SaveAs(path & "\\" & fname)
            'lblmsg.Text = "Successfully Update"
            MultiView1.ActiveViewIndex = "0"
            Call reptdata()
        End If
    End Sub
End Class
