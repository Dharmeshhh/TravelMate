Imports System.Data.OleDb
Imports System.Data
Partial Class changepass
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim cmd1 As OleDbCommand
    Dim cmd2 As OleDbCommand


    Protected Sub btrec_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btrec.Click
        
        cmd1 = New OleDbCommand("select count(c_uname) from customer_mst where c_uname='" + Username.Text + "'", cn)
        cmd2 = New OleDbCommand("select c_email from customer_mst where c_uname='" + Username.Text + "'", cn)
        cn.Open()
        Dim i As Integer = cmd1.ExecuteScalar()
        Dim ch As String = cmd2.ExecuteScalar()
        cn.Close()
        If i > 0 And ch = txtem.Text Then
            cmd = New OleDbCommand("update customer_mst set c_password='" + Password.Text + "' where c_uname='" + Username.Text + "' and c_email='" + txtem.Text + "' ", cn)
            '   Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            MsgBox("updated")
            lblError.Text = "Your Password has been Successfully Updated"
            lblError.Visible = True

            ' Catch ex As Exception
            '  MsgBox(ex.Message)

        Else


            MsgBox("Your Username or Email Address is Invalid")


        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
        lblError.Visible = False
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("custlogin.aspx")

    End Sub
End Class
