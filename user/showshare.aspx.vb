Imports System.Data
Imports System.Data.SqlClient

Partial Class user_showshare
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If

        Dim link As String = "../user/showshare.aspx"
        Dim query As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("shareholder.aspx")

        End If
        query = "select dematid from demat where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("demat.aspx")
        End If
        query = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(query)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If


        Dim query1 As String
        query1 = "select * from vwshowshare"
        reptshowshare.DataSource = dc.gettable(query1)
        reptshowshare.DataBind()
    End Sub

    Protected Sub reptshowshare_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptshowshare.ItemCommand
        Dim id As Integer
        id = e.CommandArgument
        Session("sname") = e.CommandName
        Session("buyshid") = id

        Response.Redirect("buyshare.aspx")

    End Sub
End Class
