
Partial Class custabout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("USERNAME") > Nothing Then
            Button1.Text = "LOG-OUT"
        Else
            Button1.Text = "LOGIN"
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")
    End Sub
End Class
