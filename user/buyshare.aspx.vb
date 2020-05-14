Imports System.Data
Imports System.Data.SqlClient


Partial Class user_sharetransaction
    Inherits System.Web.UI.Page
    Dim dc As New dataclass


    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim shid As Integer = Session("buyshid")


        Dim query1 As String
        Dim rw1 As DataRow
        Dim rgid As Integer = Session("regid")

       

        query1 = "select holderid from shareholder where regid=" & rgid
        rw1 = dc.getrow(query1)

        Dim holdid As Integer = rw1("holderid")

        Dim status As String = "pending"

        Dim query2 As String
        Dim dt As String = dc.chgdate(Today.Date)
        Dim transtype As String = "buy"
        query2 = "insert into shtransaction(trandate,regid,shareid,holderid,transtype,price,qty,status,brockerage) values('" & dt & "','" & rgid & "','" & shid & "','" & holdid & "','" & transtype & "','" & txtprice.Text & "','" & txtqty.Text & "','" & status & "','" & brock.Text & "')"
        If dc.saverecord(query2) Then
            lblmsg.Text = "Request Send Successfully"
        Else
            lblmsg.Text = "Request Not Send "
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("regid") = Nothing Then
                Response.Redirect("../main/login.aspx")
            End If


            TextBox1.Text = Session("sname")
            Dim link As String = "../user/buyshare.aspx"
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

            If Session("buyshid") = Nothing Then
                Response.Redirect("showshare.aspx")
            End If
            Dim query1 As String
            Dim rw As DataRow
            query1 = "select sharename from share where shareid=" & Session("buyshid")
            rw = dc.getrow(query1)

            Dim shname As String = rw("sharename")

            txtsharenm.Text = shname
        Catch
            Response.Redirect("showshare.aspx")
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim test As String = "BSE:"
        Dim text As String = TextBox1.Text
        Dim search As String = test + text
        Dim link As String = "https://www.google.co.in/search?dcr=0&tbm=fin&ei=ZAXJWterGcWAvgSjw7mgDA&q=" & search
        Response.Redirect(link)
    End Sub

    Protected Sub txtprice_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtprice.TextChanged
    
    End Sub

    Protected Sub txtqty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtqty.TextChanged
        Try
            Dim price As Integer = txtprice.Text
            Dim qty As Integer = CInt(Int(txtqty.Text))
            total.Text = (price * qty)
            brock.Text = (total.Text * 0.03)
        Catch
        End Try
    End Sub


End Class
