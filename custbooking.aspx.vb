Imports System.Data.OleDb
Imports System.Data
Partial Class custbooking
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim actamt As Integer
    Dim damt As Integer
    Dim ref As Integer
    Dim depdate As Date
    Dim curdt As Date
    Dim cmd2 As New OleDbCommand
    Dim i As Integer
    Dim c As Integer
    Dim amt As Integer
    Dim status As String = "cancel"
    Dim statuss As String = "confirm"







    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        HiddenField1.Value = "confirm"
        Label2.Visible = False
        If Session("USERNAME") > Nothing Then


            Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
            Dim ds = New DataSet()
            cmd = New OleDbCommand("select * from booking where c_name='" + Session("USERNAME") + "'", cn)
            cmd2 = New OleDbCommand("select count(c_name) from booking where c_name='" + Session("USERNAME") + "' and status='" + statuss + "'", cn)
            cn.Open()
            i = cmd2.ExecuteScalar()

            Label1.Text = "Dear " + Session("USERNAME") + " Your Bookings On Travel-Mate are "
            Dim da = New OleDbDataAdapter(cmd)
            da.Fill(ds)

            cn.Close()

            If i <= 0 Then
                'if no bookings '
                lblcon.Text = "Sorry " + Session("USERNAME") + " you have no Bookings on Travel-Mate !"
                Panel2.Visible = False
            Else
                'if booked '
                lblcon.Visible = False
                ' Dim drow As DataRow
                'drow = ds.Tables(0).Rows(0)
                actualamt.Visible = False
                dedamt.Visible = False
                refamt.Visible = False
                ' actamt = drow(7)
                ' depdate = drow(10).ToString
                '  curdt = Date.Today

                '  ded()

                '  actualamt.Text = actamt


            End If
            Button1.Text = "LOG-OUT"

        Else

            'for visitior '
            Label1.Visible = False
            Panel2.Visible = False
            lblcon.Text = "Sorry You have No bookings Register or login to book packages, Thank you !"
            GridView1.Visible = False
            Button1.Text = "LOGIN"

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")

    End Sub
    Public Sub ded()

        If depdate = curdt Then
            amt = actamt * 100 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt
        ElseIf depdate = curdt.AddDays(1) Then
            amt = actamt * 50 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt
        ElseIf depdate < curdt.AddDays(7) Then
            amt = actamt * 40 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt
        ElseIf depdate < curdt.AddDays(15) Then
            amt = actamt * 30 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt
        ElseIf depdate < curdt.AddDays(25) Then
            amt = actamt * 20 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt
        Else

            amt = actamt * 10 / 100
            dedamt.Text = amt
            refamt.Text = actamt - amt

        End If

    End Sub

    Protected Sub cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cancel.Click
        Try
            Dim cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
            Dim cmd As OleDbCommand
            Dim cmd2 As OleDbCommand

            cmd = New OleDbCommand("update booking set amount='" + dedamt.Text + "', status='" + status + "' where c_name='" + Session("USERNAME") + "'and tour_place='" + GridView1.SelectedRow().Cells(0).Text + "'", cn)
            cmd2 = New OleDbCommand("update payment set amount=" + dedamt.Text + " where customername='" + Session("USERNAME") + "' and amount=" + actualamt.Text + "", cn)
            cn.Open()
            cmd.ExecuteNonQuery()
            cmd2.ExecuteNonQuery()

            cn.Close()
            MsgBox("Your booking was Cancelled")
           
            Response.Redirect("custbooking.aspx")

        Catch ex As Exception
            Response.Write("<script>alert('Please Try again later !');</script>")
        End Try
           End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

        actualamt.Visible = True
        dedamt.Visible = True
        refamt.Visible = True
        Label2.Visible = True
        Label2.Text = "" + GridView1.SelectedRow().Cells(0).Text + " is selected Your refund amount will be paid.if you cancelled the package wait for our customer-care call for refund Process "
        actualamt.Text = GridView1.SelectedRow().Cells(1).Text
        depdate = GridView1.SelectedRow().Cells(3).Text
        actamt = GridView1.SelectedRow().Cells(1).Text
        curdt = Date.Today
        ded()





    End Sub
End Class
