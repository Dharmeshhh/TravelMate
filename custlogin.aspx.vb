Imports System.Data.OleDb
Imports System.Data
Partial Class custlogin
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim ct As Integer
   

    Protected Sub btLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btLogin.Click
        If Username.Text = "Admin" Then
            Session("USERNAME") = Username.Text
            cmd = New OleDbCommand("select count(c_uname) from customer_mst where c_uname='Admin' and c_password='" + Password.Text + "'", cn)
            cn.Open()
            ct = cmd.ExecuteScalar()

            cn.Close()
            If ct > 0 Then
                Response.Redirect("admhome.aspx")
            End If
        Else
            lblError.Text = "Invalid Username or Password !"
        End If
        cmd = New OleDbCommand("select count(c_uname) from customer_mst where c_uname='" + Username.Text + "' and c_password='" + Password.Text + "'", cn)
        cn.Open()
        Dim i As Integer = cmd.ExecuteScalar()
        cn.Close()
        If i > 0 Then
            Session("USERNAME") = Username.Text
            Response.Redirect("custhome.aspx")
            'If CheckBox1.Checked Then
            'Response.Cookies("UNAME").Value = Username.Text
            'Response.Cookies("PWD").Value = Username.Text
            'Response.Cookies("UNAME").Expires = DateAndTime.Now.AddDays(15)
            'Response.Cookies("UNAME").Expires = DateAndTime.Now.AddDays(15)
            ' Else
            'Response.Cookies("UNAME").Expires = DateAndTime.Now.AddDays(-1)
            'End If
        Else
            ' Response.Write("<script>alert(Invalid); </script>")
            lblError.Text = "Invalid Username or Password !"
            HyperLink1.Visible = True

        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not IsPostBack Then
        'If Request.Cookies("UNAME") > "" And Request.Cookies("PWD") > "" Then
        'Username.Text = Request.Cookies("UNAME").Value
        'Password.Attributes("value") = Request.Cookies("PWD").Value
        'CheckBox1.Checked = True
        'End If
        'End If
        HyperLink1.Visible = False
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        'Session("USERNAME") = Nothing
    End Sub
End Class
