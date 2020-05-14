Imports System.Linq
Imports System.Net.Mail
Imports System.Net
Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class dataclass
    Dim conn As New SqlConnection

    Public Sub New()
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\sharedata.mdf;Integrated Security=True;User Instance=True"
    End Sub

    Public Function gettable(ByVal query As String) As DataTable
        Dim tb As New DataTable
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            Dim ds As New DataSet
            da.Fill(ds)
            tb = ds.Tables(0)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try
        Return tb
    End Function
    Public Sub sendemail(ByVal emailto As String, ByVal subject As String, ByVal details As String)
        Try
            Dim msg As New MailMessage()
            Dim smtp As New SmtpClient()
            msg.From = New MailAddress("shareworld1924@gmail.com")
            msg.Subject = subject
            msg.Body = details
            msg.IsBodyHtml = True
            msg.To.Add(New MailAddress(emailto))
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim networkcred As New NetworkCredential()
            networkcred.UserName = "shareworld1924@gmail.com"
            networkcred.Password = "harshjayneel"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = networkcred
            smtp.Port = 587
            smtp.Send(msg)
        Catch ex As Exception
            Console.Write(ex.Message)
        End Try
    End Sub

    Public Function getrow(ByVal query As String) As DataRow
        Dim rw As DataRow = Nothing
        Try
            Dim da As New SqlDataAdapter(query, conn)
            Dim ds As New DataSet
            Dim tb As New DataTable
            da.Fill(ds)
            tb = ds.Tables(0)
            rw = tb(0)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try
        Return rw
    End Function
    Public Function saverecord(ByVal query As String) As Boolean
        Dim result As Boolean = False
        Try
            conn.Open()
            Dim cmd As New SqlCommand(query, conn)
            cmd.ExecuteNonQuery()
            result = True

        Catch ex As Exception
            result = False
        Finally
            conn.Close()
        End Try
        Return result
    End Function

    Public Function savedata(ByVal cmd As SqlCommand) As Boolean
        Dim result As Boolean = False
        Try
            conn.Open()
            cmd.Connection = conn
            cmd.ExecuteNonQuery()
            result = True
        Catch ex As Exception
            result = False
        Finally
            conn.Close()
        End Try
        Return result
    End Function

    Public Function chgdate(ByVal dt As String) As String
        Dim dd As String = dt.Substring(0, 2)
        Dim mm As String = dt.Substring(3, 2)
        Dim yy As String = dt.Substring(6, 4)
        Dim d As String = mm & "/" & dd & "/" & yy
        Return d
    End Function

    Public Function checkrow(ByVal query As String) As Integer
        Dim result As Boolean
        Dim dr As SqlDataReader = Nothing
        Dim id As Integer
        Try
            conn.Open()
            Dim cmd As New SqlCommand(query, conn)
            dr = cmd.ExecuteReader()
            dr.Read()
            id = dr(0)
            result = True
        Catch ex As Exception
            result = False
        Finally
            dr.Close()
            conn.Close()
        End Try
        Return result
    End Function

    Public Function checkrowdata(ByVal query As String) As Integer
        Dim result As Integer
        Dim dr As SqlDataReader = Nothing
        Dim id As Integer
        Try
            conn.Open()
            Dim cmd As New SqlCommand(query, conn)
            dr = cmd.ExecuteReader()
            dr.Read()
            id = dr(0)
            result = id
        Catch ex As Exception
            result = 0
        Finally
            dr.Close()
            conn.Close()
        End Try
        Return result
    End Function
End Class
