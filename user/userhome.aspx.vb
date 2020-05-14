Imports System.Data
Imports System.Data.SqlClient

Partial Class user_userhome
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Call getrepeatertable()
        Dim link As String = "../user/userhome.aspx"
        Dim query As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Session("trans") = "new"
            Session("index") = 1
            Response.Redirect("shareholder.aspx")
        End If  
        query = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If
    End Sub
    Private Sub getrepeatertable()

        Dim query As String
        query = "select newsid,convert(varchar,newsdate,103) as newsdate,heading,newsdetail,newstype,newsby,newsfor from news"
        Repeater1.DataSource = dc.gettable(query)
        Repeater1.DataBind()

        Dim query1 As String
        query1 = "select appid,convert(varchar,appdate,103) as appdate,iponame,details from application"
        Repeater2.DataSource = dc.gettable(query1)
        Repeater2.DataBind()

    End Sub
End Class
