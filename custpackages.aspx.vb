Imports System.Data.OleDb
Imports System.Data
Partial Class custpackages
    Inherits System.Web.UI.Page
    Dim tid As Integer = 1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("USERNAME") > "" Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"

        End If


        Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
        Dim query As String
        query = "select * from package_mst"
        cn.Open()
        Dim dset = New DataSet()
        Dim cmd = New OleDbCommand(query, cn)
        Dim adp = New OleDbDataAdapter(cmd)
        adp.Fill(dset)
        cn.Close()
        Repeater1.DataSource = dset
        Repeater1.DataBind()

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")

    End Sub
End Class
