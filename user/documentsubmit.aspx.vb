Imports System.Data
Imports System.Data.SqlClient

Partial Class user_documentSubmit
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        Dim query As String
        Dim result As Boolean
        Dim regid As Integer = Session("regid")
        Dim path As String = Server.MapPath("docimg")
        Dim link As String = Session("link")
        query = "insert into documentsubmit(docname,doctype,image,purpose,regid) values('" & txtdocnm.Text & "','" & txtdoctype.Text & "','" & Fileimage.FileName & "','" & txtpurpose.Text & "','" & regid & "')"
        result = dc.saverecord(query)
        If result Then
            Fileimage.SaveAs(path & "\\" & Fileimage.FileName)
            lblmsg.Text = "Successfuly Save"
            Response.Redirect(link)
        Else
            lblmsg.Text = "Record Not Save"
        End If
        

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")

        End If
       

    End Sub
End Class
