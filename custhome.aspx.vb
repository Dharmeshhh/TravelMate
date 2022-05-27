Imports System.Data.OleDb
Imports System.Data
Partial Class custhome
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
        cmd = New OleDbCommand("select c_name from customer_mst where c_uname='" + Session("USERNAME") + "'", cn)
        cn.Open()
        lblSuccess.Text = cmd.ExecuteScalar()
        cn.Close()
        If Session("USERNAME") > Nothing Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"
            lblSuccess.Text = "Welcome Guest"
        End If
        '  Dim query As String
        ' query = "select * from feedback"
        ' cn.Open()
        ' Dim dset = New DataSet()
        ' Dim cmd2 = New OleDbCommand(query, cn)
        ' Dim adp = New OleDbDataAdapter(cmd2)
        ' adp.Fill(dset)
        '  cn.Close()
        ' Repeater1.DataSource = dset
        'Repeater1.DataBind()



    End Sub

   
    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")

    End Sub

    
End Class
