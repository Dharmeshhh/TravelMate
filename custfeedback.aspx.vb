Imports System.Data.OleDb
Imports System.Data
Partial Class custfeedback
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim dt As Date

    Protected Sub btnFeedback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFeedback.Click
      
        If Session("USERNAME") = Nothing Then
            Try

                cmd = New OleDbCommand("insert into vis_feedback(vname,email,fdate,msg) values('" + tbFname.Text + "','" + tbMail.Text + "','" + dt + "','" + tbMSG.Text + "')", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                cn.Close()
                Response.Write("<script>alert('Thank you for your valuable feedback');</script>")
            Catch ex As Exception

                Response.Write("<script>alert('This email Address is already exist');</script>")
            End Try

        Else

            Try
                cmd = New OleDbCommand("insert into cust_feedback values('" + Session("USERNAME") + "','" + dt + "','" + tbMSG.Text + "')", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                cn.Close()
                Response.Write("<script>alert('Thank you for your valuable feedback');</script>")
            Catch ex As Exception

                Response.Write("<script>alert('You only feedback once');</script>")
            End Try
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
        If Session("USERNAME") > "" Then
            tbFname.Text = Session("USERNAME")
            tbFname.Enabled = False
            tbMail.Enabled = False
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"

        End If
        
        dt = Format(Date.Now)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")
    End Sub
End Class
