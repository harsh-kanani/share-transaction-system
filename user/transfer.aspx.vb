Imports System.Data
Imports System.Data.SqlClient

Partial Class user_transfer
    Inherits System.Web.UI.Page
    Dim dc As New dataclass    
    Protected Sub demat()
        Dim query As String
        Dim rw As DataRow
        query = "select * from demat where regid=" & Session("regid")
        rw = dc.getrow(query)
        lbldemat.Text = rw("balance")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = True Then
            Call demat()
        End If
        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        End If
        Call demat()
        Dim link As String = "../user/transfer.aspx"
        Dim chkquery As String = "select holderid from shareholder where regid=" & Session("regid")
        Dim check As Boolean
        check = dc.checkrow(chkquery)
        If check = False Then
            Session("link") = link
            Response.Redirect("shareholder.aspx")

        End If

        chkquery = "select docid from documentsubmit where regid=" & Session("regid")
        check = dc.checkrow(chkquery)
        If check = False Then
            Session("link") = link
            Response.Redirect("documentsubmit.aspx")
        End If
        chkquery = "select bankid from bank where regid=" & Session("regid")
        check = dc.checkrow(chkquery)
        If check = False Then
            Session("link") = link
            Response.Redirect("bank.aspx")
        End If


        Dim rw As DataRow
        Dim re1 As DataRow
        Dim query1 As String

        If Session("regid") = Nothing Then
            Response.Redirect("../main/login.aspx")
        Else
            Dim rgid As Integer = Session("regid")
            Dim query As String
            query = "select * from demat where regid=" & rgid
            rw = dc.getrow(query)
            txtdematnum.Text = rw("dematno")
            Session("dematbal") = rw("balance")




            query1 = "select * from bank where regid=" & rgid
            re1 = dc.getrow(query1)
            txtbanknum.Text = re1("accountno")
            Session("bankbal") = re1("balance")



        End If








    End Sub

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click

        
        Try
            Dim regid As Integer = Session("regid")
            Dim bal As Decimal = Session("dematbal")
   


        If ddlist.SelectedValue = "withdrawl" Then
            If (txtamt.Text > 0) Then
                If (bal > 0) Then
                    If (bal >= txtamt.Text) Then
                        Dim updquery As String

                        Dim tot As Decimal = (bal - txtamt.Text)
                        updquery = "update demat set balance='" & tot & "' where regid='" & regid & "'"
                        dc.saverecord(updquery)




                        Dim updbank As String
                        Dim bal1 As Decimal = Session("bankbal")
                        Dim tot1 As Decimal = (bal1 + txtamt.Text)
                        updbank = "update bank set balance='" & tot1 & "' where regid='" & regid & "'"
                        dc.saverecord(updbank)


                        Dim insqry As String
                        Dim dt As Date = dc.chgdate(Today.Date)
                        Dim trato As String = "Bank"
                        Dim trafrom As String = "Demat"
                        insqry = "insert into moneytransfer(dematid,bankaccno,transdate,ammount,purpose,regid,transfrom,transto) values('" & txtdematnum.Text & "','" & txtbanknum.Text & "','" & dt & "','" & txtamt.Text & "','" & txtdetail.Text & "','" & regid & "','" & trafrom & "','" & trato & "')"
                        dc.saverecord(insqry)

                        Dim query2 As String
                        Dim regid1 As Integer = Session("regid")
                        Dim dt1 As String = dc.chgdate(Today.Date)
                        Dim subj As String = "Transfer Money"
                        Dim msg As String = "Successfully Transfer  " & txtamt.Text & " into bank"
                        query2 = "insert into message(msgdate,regid,subject,message) values('" & dt1 & "','" & regid1 & "','" & subj & "','" & msg & "')"
                        dc.saverecord(query2)




                        lblmsg.Text = "Withdrawl Successfull"
                    Else
                        lblmsg.Text = "Insufficient Balance"
                    End If

                Else
                    lblmsg.Text = "Your Demat Account Balance is Zero"
                End If
            Else
                lblmsg.Text = "Your Ammount Is Wrong"
            End If


        End If

        If ddlist.SelectedValue = "deposite" Then
            Dim bankbal As Integer = Session("bankbal")
            If (txtamt.Text > 0) Then
                If (bankbal > 0) Then
                    If (bankbal > txtamt.Text) Then
                        Dim updbank As String
                        Dim bal1 As Decimal = Session("bankbal")
                        Dim tot1 As Decimal = (bal1 - txtamt.Text)
                        updbank = "update bank set balance='" & tot1 & "' where regid='" & regid & "'"
                        dc.saverecord(updbank)


                        Dim updquery As String

                        Dim tot As Decimal = (bal + txtamt.Text)
                        updquery = "update demat set balance='" & tot & "' where regid='" & regid & "'"
                        dc.saverecord(updquery)



                        Dim insqry As String
                        Dim dt As Date = Today
                        Dim trato As String = "Demat"
                        Dim trafrom As String = "Bank"
                        insqry = "insert into moneytransfer(dematid,bankaccno,transdate,ammount,purpose,regid,transfrom,transto) values('" & txtdematnum.Text & "','" & txtbanknum.Text & "','" & dt & "','" & txtamt.Text & "','" & txtdetail.Text & "','" & regid & "','" & trafrom & "','" & trato & "')"
                        dc.saverecord(insqry)
                        lblmsg.Text = "Transaction Successfull"
                    Else

                        lblmsg.Text = "Insufficient Balance"
                    End If
                Else
                    lblmsg.Text = "Your Bank Balance Is Zero"
                End If
            Else
                lblmsg.Text = "Your Ammount Is Wrong"

            End If

        End If
        Catch
            lblmsg.Text = "your account have 0 balance"
        End Try
        Call demat()


    End Sub

    Protected Sub btncnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncnl.Click
        txtamt.Text = ""
        txtdetail.Text = ""
    End Sub
End Class
