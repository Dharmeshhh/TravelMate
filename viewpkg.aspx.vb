Imports System.Data.OleDb
Imports System.Data
Partial Class viewpkg
    Inherits System.Web.UI.Page
    Dim tid As String
    Dim tnm As String
    Dim amt As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("USERNAME") > "" Then
            Button1.Text = "LOG-OUT"
        Else

            Button1.Text = "LOGIN"

        End If




        tid = Request.QueryString("tid")
        tnm = Request.QueryString("tnm")
        amt = Request.QueryString("amt")

        Session("pkgid") = tid
        Session("pkgnm") = tnm
        Session("amt") = amt





        Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")

        Dim cmd As New OleDbCommand("select * from package_mst where tour_id=" + tid + "", cn)
        cn.Open()
        Dim dset = New DataSet()
        '  ' Dim cmd = New OleDbCommand(query, cn)
        Dim adp = New OleDbDataAdapter(cmd)
        adp.Fill(dset)
        cn.Close()

        Repeater1.DataSource = dset
        Repeater1.DataBind()

        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")

        cmd = New OleDbCommand("select * from package_mst where tour_id=" + tid + "", cn)
        cn.Open()
        dset = New DataSet()
        '  ' Dim cmd = New OleDbCommand(query, cn)
        adp = New OleDbDataAdapter(cmd)
        adp.Fill(dset)
        cn.Close()

        Repeater2.DataSource = dset
        Repeater2.DataBind()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/custlogin.aspx")
        Session("USERNAME") = Nothing
    End Sub

    Protected Sub btnPay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPay.Click
        If Session("USERNAME") = Nothing Then
            MsgBox("You Have to Login First")
            Response.Redirect("custlogin.aspx")
        Else
            Response.Redirect("booknow.aspx")

        End If
    End Sub
End Class
