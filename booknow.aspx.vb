Imports System.Data.OleDb
Imports System.Data
Partial Class booknow
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim cmd2 As OleDbCommand
    Dim cmd3 As OleDbCommand
    Dim amount As String
    Dim email As String
    Dim mob As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        un.text = Session("USERNAME")
        amount = Session("amt")
        hdnAmount.Value = amount
        Label9.Visible = False
        Label10.Visible = False
        Label11.Visible = False
        DropDownList1.Visible = False
        DropDownList2.Visible = False


        If Session("USERNAME") > Nothing Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"

        End If
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try

            If Calendar1.SelectedDate < Today.Date Then
                Response.Write("<script>alert('You cannot select This date sorry !');</script>")
                Label9.Visible = True
                Label10.Visible = True
                Label11.Visible = True
                DropDownList1.Visible = True
                DropDownList2.Visible = True
                Try
                    Label8.Visible = True
                    Label8.Text = amount * txtper.Text


                Catch ex As Exception
                    Label8.Text = ""
                End Try
            ElseIf DropDownList2.SelectedItem.Text <= Today.Date.Year And DropDownList1.SelectedItem.Text <= Today.Date.Month Then

                Response.Write("<script>alert('The expiration date is expired!');</script>")
                Label9.Visible = True
                Label10.Visible = True
                Label11.Visible = True
                DropDownList1.Visible = True
                DropDownList2.Visible = True
                Try
                    Label8.Visible = True
                    Label8.Text = amount * txtper.Text


                Catch ex As Exception
                    Label8.Text = ""
                End Try
            Else
                Dim ds = New DataSet()
                cmd = New OleDbCommand("select * from customer_mst where c_uname='" + Session("USERNAME") + "'", cn)

                cn.Open()
                Dim da = New OleDbDataAdapter(cmd)
                da.Fill(ds)
                cn.Close()
                Dim drow As DataRow
                drow = ds.Tables(0).Rows(0)
                email = drow(3).ToString
                mob = drow(4).ToString
                Dim amt As String
                Dim status As String
                status = "confirm"
                Dim per As String = txtper.Text
                amt = amount * per


                Dim abc As String = HiddenField1.Value
                cmd2 = New OleDbCommand("insert into booking(tour_id,c_name,tour_place,email,mobile_no,address,amount,person,booking_date,departure_date,status) values('" + Session("pkgid") + "','" + Session("USERNAME") + "','" + Session("pkgnm") + "','" + email + "','" + mob + "','" + txtadd.Text + "','" + amt + "','" + txtper.Text + "','" + Date.Today.Date + "','" + Calendar1.SelectedDate + "','" + status + "')", cn)
                cmd3 = New OleDbCommand("insert into payment values('" + Session("USERNAME") + "','" + cardnm.Text + "','" + cardno.Text + "'," + cardcvv.Text + ",'" + amt + "')", cn)

                cn.Open()

                cmd2.ExecuteNonQuery()
                cmd3.ExecuteNonQuery()

                cn.Close()
                MsgBox("Your Booking was successful")
                Response.Redirect("custbooking.aspx")

            End If

        Catch ex As Exception
            Response.Write("<script>alert('Please Try again later and Fill Form Details Properly!');</script>")
        End Try

    End Sub


    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        If Calendar1.SelectedDate < Today.Date Then
            Response.Write("<script>alert('You cannot select This date sorry !');</script>")
            Calendar1.Focus()

        End If
        Try
            Label8.Visible = True
            Label8.Text = amount * txtper.Text


        Catch ex As Exception
            Label8.Text = ""
        End Try
        Label9.Visible = True
        Label10.Visible = True
        Label11.Visible = True
        DropDownList1.Visible = True
        DropDownList2.Visible = True
        cardnm.Focus()


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("custlogin.aspx")
    End Sub

   

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList2.SelectedItem.Text <= Today.Date.Year And DropDownList1.SelectedItem.Text <= Today.Date.Month Then

            Response.Write("<script>alert('The expiration date is expired!');</script>")
        End If
        Label9.Visible = True
        Label10.Visible = True
        Label11.Visible = True
        DropDownList1.Visible = True
        DropDownList2.Visible = True
        Try
            Label8.Visible = True
            Label8.Text = amount * txtper.Text


        Catch ex As Exception
            Label8.Text = ""
        End Try
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        If DropDownList2.SelectedItem.Text <= Today.Date.Year And DropDownList1.SelectedItem.Text <= Today.Date.Month Then

            Response.Write("<script>alert('The expiration date is expired!');</script>")
        End If
        Label9.Visible = True
        Label10.Visible = True
        Label11.Visible = True
        DropDownList1.Visible = True
        DropDownList2.Visible = True
        Try
            Label8.Visible = True
            Label8.Text = amount * txtper.Text


        Catch ex As Exception
            Label8.Text = ""
        End Try
    End Sub
End Class
