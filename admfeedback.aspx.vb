Imports System.Data.OleDb
Imports System.Data


Partial Class admfeedback
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim cmd2 As OleDbCommand

 

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")

        If Session("USERNAME") > "" Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"

        End If




        Label3.Visible = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        HiddenField1.Value = GridView1.SelectedRow().Cells(2).Text
        HiddenField2.Value = GridView1.SelectedRow().Cells(1).Text
        txtto.Text = GridView1.SelectedRow().Cells(0).Text
        txtto.Enabled = False
        txtrep.Focus()

    End Sub

    Protected Sub Btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsend.Click
        Try
            cmd = New OleDbCommand("insert into adm_feedback(recpnm,fmsg,fdate,freply,rdate) values('" + txtto.Text + "','" + HiddenField1.Value + "','" + HiddenField2.Value + "','" + txtrep.Text + "','" + Date.Today.Date + "')", cn)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            Label3.Visible = True
            Label3.Text = "Your Feedback was Successfully sent to '" + txtto.Text + ""

        Catch ex As Exception
            Label3.Visible = True
            Label3.Text = "Please select a feedback to reply!"

        End Try
        
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")
    End Sub
End Class
