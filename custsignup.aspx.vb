Imports System.Data.OleDb
Imports System.Data
Partial Class custsignup
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand

  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
    End Sub

    Protected Sub btSignup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btSignup.Click
        cmd = New OleDbCommand("insert into customer_mst values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbName.Text + "','" + tbEmail.Text + "','" + tbMobile.Text + "')", cn)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("custlogin.aspx")
    End Sub
End Class
