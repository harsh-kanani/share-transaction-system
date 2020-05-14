Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_showtrans
    Inherits System.Web.UI.Page
    Dim dc As New dataclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        If IsPostBack = False Then
            Call reptdata()
        End If
    End Sub

    Private Sub reptdata()
        Dim query As String
        Dim st As String = "pending"
        query = "select * from vwshtrans where status='" & st & "'"
        reptsharetrans.DataSource = dc.gettable(query)
        reptsharetrans.DataBind()
    End Sub

    Protected Sub reptsharetrans_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles reptsharetrans.ItemCommand

        Dim id As Integer = e.CommandArgument
        Dim rw3 As DataRow

        Dim type As String
        type = "select transtype from shtransaction where tranid=" & id
        rw3 = dc.getrow(type)
        Dim transtype As String = rw3("transtype")


        Dim fetchshid As String
        fetchshid = "select shareid,regid,qty,price,brockerage from shtransaction where tranid=" & id
        Dim rw As DataRow
        Dim rwemail As DataRow
        rw = dc.getrow(fetchshid)

        Dim rid As Integer = rw("regid")
        Dim qty As Integer = rw("qty")
        Dim price As Decimal = rw("price")
        Dim brock As Decimal = rw("brockerage")
        rwemail = dc.getrow("select * from vwsharetransaction where tranid=" & id)
        Dim email As String = rwemail("emailid")
        Dim sharename As String = rwemail("sharename")
        If transtype = "buy" Then
            Dim status As String = "successful"
            Dim qry As String
            qry = "update shtransaction set status='" & status & "' where tranid='" & id & "'"
            dc.saverecord(qry)

            Dim totprice As Decimal = (qty * price) - brock
            Dim totdmtbal As Decimal = (chkdematbal(rid) - totprice)
            Dim updbal As String = "update demat set balance='" & totdmtbal & "' where regid ='" & rid & "'"
            dc.saverecord(updbal)

            Dim selqry As String
            Dim query1 As String
            Dim rw1 As DataRow

            If checkshare(rw("shareid"), rid) Then

                selqry = "select qty from usershare where shareid='" & rw("shareid") & "' and regid='" & rid & "'"
                rw1 = dc.getrow(selqry)
                Dim qty1 As Integer = rw1("qty")
                Dim tot As Integer = (qty + qty1)

                query1 = "update usershare set qty='" & tot & "' where shareid='" & rw("shareid") & "' and regid='" & rid & "'"
                dc.saverecord(query1)
                Call reptdata()

            Else
                Dim dt1 As String = DateString
                query1 = "insert into usershare(shareid,qty,regid) values('" & rw("shareid") & "','" & qty & "','" & rid & "')"
                dc.saverecord(query1)
                Call reptdata()
            End If
            dc.sendemail(email, "Buy share", "You successfully buy" & sharename)
        End If



        If transtype = "sell" Then
            Dim status As String = "successful"
            Dim qry As String = "update shtransaction set status='" & status & "' where tranid='" & id & "'"
            dc.saverecord(qry)

            Dim totprice As Decimal = (qty * price) - brock
            Dim totdmtbal As Decimal = (chkdematbal(rid) + totprice)
            Dim updbal As String
            updbal = "update demat set balance='" & totdmtbal & "' where regid ='" & rid & "'"
            dc.saverecord(updbal)

            Dim selqry As String
            Dim rw1 As DataRow
            selqry = "select qty from usershare where shareid='" & rw("shareid") & "' and regid='" & rid & "'"
            rw1 = dc.getrow(selqry)
            Dim qty1 As Integer = rw1("qty")
            Dim tot As Integer = (qty1 - qty)

            Dim query1 As String
            query1 = "update usershare set qty='" & tot & "' where shareid='" & rw("shareid") & "' and regid='" & rid & "'"
            dc.saverecord(query1)
            Call reptdata()
            dc.sendemail(email, "Sell share", "You successfully buy" & sharename)
        End If
        
    End Sub

    Private Function checkshare(ByVal shareid As Integer, ByVal regid As Integer) As Boolean
        Dim chkqry As String
        chkqry = "select count(ushareid) from usershare where shareid='" & shareid & "' and regid='" & regid & "'"
        Dim conn As New SqlConnection
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\sharedata.mdf;Integrated Security=True;User Instance=True"

        Dim command As SqlCommand = New SqlCommand(chkqry, conn)
        conn.Open()
        Dim reader As Integer = command.ExecuteScalar()

        If reader Then
            Return True
        Else
            Return False

        End If

    End Function

    Private Function chkdematbal(ByVal regid As Integer) As Decimal

        Dim fetchbal As String
        Dim rw As DataRow
        fetchbal = "select balance from demat where regid=" & regid
        rw = dc.getrow(fetchbal)
        Return rw("balance")
    End Function

End Class
