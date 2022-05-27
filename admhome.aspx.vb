Imports System.Data.OleDb
Imports System.Data
Partial Class admhome
    Inherits System.Web.UI.Page

    Dim cn As OleDbConnection
    Dim cmd As New OleDbCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")


        If Session("USERNAME") > Nothing Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"

        End If
       
    End Sub

    Protected Sub Label1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label1.Load
        Try
            cmd = New OleDbCommand("select count(c_uname) from customer_mst", cn)
            Dim i As Integer
            cn.Open()
            i = cmd.ExecuteScalar()

            Label1.Text = i

            cn.Close()
        Catch ex As Exception
            Label1.Text = "There is no Registered users"
        End Try
        
    End Sub

    Protected Sub Label2_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label2.Load
        Try
            cmd = New OleDbCommand("select count(c_name) from booking", cn)
            Dim i As Integer
            cn.Open()
            i = cmd.ExecuteScalar()

            Label2.Text = i

            cn.Close()
        Catch ex As Exception
            Label2.Text = "No Bookings Yet"
        End Try
        
    End Sub

    Protected Sub Label3_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label3.Load
        '    Try
        Dim status As String = "cancel"
        cmd = New OleDbCommand("select count(c_name) from booking where status='" + status + "' ", cn)
        Dim i As Integer
        cn.Open()
        i = cmd.ExecuteScalar()

        Label3.Text = i

        cn.Close()
        '   Catch ex As Exception
        ' Label3.Text = "There is no booking cancelled"
        '  End Try

    End Sub


    Protected Sub Label4_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label4.Load
        Try
            Dim cmd2 As OleDbCommand

            cmd = New OleDbCommand("select count(msg) from cust_feedback", cn)
            cmd2 = New OleDbCommand("select count(msg) from vis_feedback", cn)
            Dim c As Integer
            Dim v As Integer
            Dim tot As Integer
            cn.Open()
            c = cmd.ExecuteScalar()
            v = cmd2.ExecuteScalar()
            tot = c + v

            Label4.Text = tot

            cn.Close()
        Catch ex As Exception

            Label4.Text = "No Feedbacks from Users/Visitors"
        End Try

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")

    End Sub
End Class

