Imports System.Data
Imports System.Data.SqlClient

Partial Class user_usershare
    Inherits System.Web.UI.Page
    Dim dc As New dataclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Call reptdata()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim test As String = "BSE:"
        Dim text As String = TextBox1.Text
        Dim search As String = test + text
        Dim link As String = "https://www.google.co.in/search?dcr=0&tbm=fin&ei=ZAXJWterGcWAvgSjw7mgDA&q=" & search
        Response.Redirect(link)
    End Sub

    Private Sub reptdata()
        Dim query As String
        query = "select * from vwshtran where regid='" & Session("regid") & "' and qty<>0"
        reptshtrans.DataSource = dc.gettable(query)
        reptshtrans.DataBind()
    End Sub

    Protected Sub reptshtrans_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptshtrans.ItemCommand
        Dim id As Integer
        id = e.CommandArgument

        Dim query As String
        Dim rw As DataRow
        query = "select * from usershare where ushareid=" & id
        rw = dc.getrow(query)
        Session("shid") = rw("shareid")
        Session("qty") = rw("qty")
        Dim regid As Integer = Session("regid")
        txtqty.Text = Session("qty")

        query = "select holderid from shareholder where regid=" & regid
        rw = dc.getrow(query)
        Session("holdid") = rw("holderid")

        query = "select sharename from share where shareid=" & Session("shid")
        rw = dc.getrow(query)
        Dim shnm As String = rw("sharename")
        txtshname.Text = shnm
        TextBox1.Text = shnm
        MultiView1.ActiveViewIndex = "1"

    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim dt As String = DateString
        Dim rgid As Integer = Session("regid")
        Dim shid As Integer = Session("shid")
        Dim qty As Integer = Session("qty")
        Dim holderid As Integer = Session("holdid")
        Dim status As String = "pending"
        Dim tratype As String = "sell"
        Dim result As String
        Dim query As String

        If (qty > txtfinalqty.Text) Then

        End If
        query = "insert into shtransaction(trandate,regid,shareid,holderid,transtype,price,qty,status,brockerage) values('" & dt & "','" & rgid & "','" & shid & "','" & holderid & "','" & tratype & "','" & txtprice.Text & "','" & txtfinalqty.Text & "','" & status & "','" & brock.Text & "')"
        result = dc.saverecord(query)
        If result Then
            lblmsg.Text = "Request Send Successfully"
            MultiView1.ActiveViewIndex = "0"
        Else
            lblmsg.Text = "something wrong"
            MultiView1.ActiveViewIndex = "0"

        End If




    End Sub

    Protected Sub txtqty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtqty.TextChanged

    End Sub

    Protected Sub txtfinalqty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfinalqty.TextChanged
        Dim price As Integer = CInt(Int(txtprice.Text))
        Dim qty As Integer = CInt(Int(txtqty.Text))
        total.Text = (price * qty)
        brock.Text = (total.Text * 0.03)
    End Sub

End Class
