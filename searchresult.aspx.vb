Imports System.Data
Imports System.Data.OleDb
Partial Class searchresult
    Inherits System.Web.UI.Page
    Dim cmd As OleDbConnection
    Dim cn As OleDbConnection
    Dim tid As Integer = 1
    Dim tb1 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("USERNAME") > "" Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"
        End If
        Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
            Dim query As String
            query = "select * from package_mst where pkg_from='" + ddlFrom.SelectedItem.Text + "' or pkg_to='" + ddlTo.SelectedItem.Text + "' or tour_type='" + DropDownList1.SelectedItem.Text + "' or tour_amount " + DropDownList2.SelectedItem.Text + ""

            cn.Open()
            Dim dset = New DataSet()
            Dim cmd = New OleDbCommand(query, cn)
            Dim adp = New OleDbDataAdapter(cmd)
            adp.Fill(dset)
            cn.Close()
            Repeater1.DataSource = dset
            Repeater1.DataBind()
        Catch ex As Exception
            Response.Write("<script>alert('Please select any parameter to search');</script>")
        End Try
        
    End Sub


End Class
