Imports System.Data.OleDb
Imports System.Data
Partial Class admpackage
    Inherits System.Web.UI.Page
    Dim cn As OleDbConnection
    Dim cmd As OleDbCommand
    Dim imgup1 As String
    Dim imgup2 As String
    Dim imgup3 As String
    Dim i1 As String
    Dim i2 As String
    Dim i3 As String


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            'add package'
            imgup1 = FileUpload1.FileName
            imgup2 = FileUpload2.FileName
            imgup3 = FileUpload3.FileName
            FileUpload1.SaveAs(Server.MapPath("~") + "/uploads/" & imgup1)
            FileUpload2.SaveAs(Server.MapPath("~") + "/uploads/" & imgup2)
            FileUpload3.SaveAs(Server.MapPath("~") + "/uploads/" & imgup3)
            cmd = New OleDbCommand("insert into package_mst(tour_place,tour_type,tour_days,tour_amount,tour_description,tour_image,tour_image1,tour_image2,pkg_from,pkg_to) values('" + tourplace.Text + "','" + DropDownList1.SelectedItem.Text + "','" + tourdays.Text + "'," + touramount.Text + ",'" + tourdescription.Text + "','" + "uploads\" + imgup1 + "','" + "uploads\" + imgup2 + "','" + "uploads\" + imgup3 + "','" + txtfrom.Text + "','" + txtto.Text + "')", cn)
            cn.Open()
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('Package inserted');</script>")

            cn.Close()

        Catch ex As Exception
            Response.Write("<script>alert('Package insertion Failed');</script>")
        End Try
        

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Image1.Visible = False
        Image2.Visible = False
        Image3.Visible = False



        If Session("USERNAME") > Nothing Then
            Button4.Text = "LOG-OUT"
        Else
            Button4.Text = "LOGIN"
        End If
        cn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\Travel Mate\App_Data\MyDatabase2.accdb")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'if no files selected'
        Try
            If FileUpload1.HasFile = False And FileUpload2.HasFile = False And FileUpload3.HasFile = False Then
                pkg()
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + i1 + "',tour_image1='" + i2 + "',tour_image2='" + i3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()



                '1 2 selected'
            ElseIf FileUpload1.HasFile = True And FileUpload2.HasFile = True And FileUpload3.HasFile = False Then
                pkg()
                imgup1 = FileUpload1.FileName
                imgup2 = FileUpload2.FileName
                FileUpload1.SaveAs(Server.MapPath("~") + "/uploads/" & imgup1)
                FileUpload2.SaveAs(Server.MapPath("~") + "/uploads/" & imgup2)

                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + "uploads\" + imgup1 + "',tour_image1='" + "uploads\" + imgup2 + "',tour_image2='" + i3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
                '2 3 selected'
            ElseIf FileUpload1.HasFile = False And FileUpload2.HasFile = True And FileUpload3.HasFile = True Then
                pkg()

                imgup2 = FileUpload2.FileName
                imgup3 = FileUpload3.FileName
                FileUpload2.SaveAs(Server.MapPath("~") + "/uploads/" & imgup2)
                FileUpload3.SaveAs(Server.MapPath("~") + "/uploads/" & imgup3)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + i1 + "',tour_image1='" + "uploads\" + imgup2 + "',tour_image2='" + "uploads\" + imgup3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
                '1 and 3 selected'
            ElseIf FileUpload1.HasFile = True And FileUpload2.HasFile = False And FileUpload3.HasFile = True Then
                pkg()
                imgup1 = FileUpload1.FileName
                imgup3 = FileUpload3.FileName
                FileUpload1.SaveAs(Server.MapPath("~") + "/uploads/" & imgup1)
                FileUpload3.SaveAs(Server.MapPath("~") + "/uploads/" & imgup3)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + "uploads\" + imgup1 + "',tour_image1='" + i2 + "',tour_image2='" + "uploads\" + imgup3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
                'only 1has file'
            ElseIf FileUpload1.HasFile = True And FileUpload2.HasFile = False And FileUpload3.HasFile = False Then
                pkg()
                imgup1 = FileUpload1.FileName
                FileUpload1.SaveAs(Server.MapPath("~") + "/uploads/" & imgup1)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + "uploads\" + imgup1 + "',tour_image1='" + i2 + "',tour_image2='" + i3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
                'only 2has file'
            ElseIf FileUpload1.HasFile = False And FileUpload2.HasFile = True And FileUpload3.HasFile = False Then
                pkg()
                imgup2 = FileUpload2.FileName
                FileUpload2.SaveAs(Server.MapPath("~") + "/uploads/" & imgup2)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + i1 + "',tour_image1='" + "uploads\" + imgup2 + "',tour_image2='" + i3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
                'only 3has file'

            ElseIf FileUpload1.HasFile = False And FileUpload2.HasFile = False And FileUpload3.HasFile = True Then
                pkg()
                imgup3 = FileUpload3.FileName
                FileUpload3.SaveAs(Server.MapPath("~") + "/uploads/" & imgup3)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + i1 + "',tour_image1='" + i2 + "',tour_image2='" + "uploads\" + imgup3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()


            Else




                imgup1 = FileUpload1.FileName
                imgup2 = FileUpload2.FileName
                imgup3 = FileUpload3.FileName
                FileUpload1.SaveAs(Server.MapPath("~") + "/uploads/" & imgup1)
                FileUpload2.SaveAs(Server.MapPath("~") + "/uploads/" & imgup2)
                FileUpload3.SaveAs(Server.MapPath("~") + "/uploads/" & imgup3)
                cmd = New OleDbCommand("UPDATE package_mst SET tour_place = '" + tourplace.Text + "', tour_type = '" + DropDownList1.SelectedItem.Text + "',tour_days = '" + tourdays.Text + "', tour_amount = " + touramount.Text + ", tour_description = '" + tourdescription.Text + "',pkg_from ='" + txtfrom.Text + "',pkg_to = '" + txtto.Text + "', tour_image='" + "uploads\" + imgup1 + "',tour_image1='" + "uploads\" + imgup2 + "',tour_image2='" + "uploads\" + imgup3 + "' WHERE tour_id = " + HiddenField1.Value + " ", cn)
                cn.Open()
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Package Updated');</script>")
                cn.Close()
            End If
            Catch ex As Exception
            Response.Write("<script>alert('Package Not Updated');</script>")
        End Try


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
       
        Dim ds = New DataSet()

        HiddenField1.Value = GridView1.SelectedRow().Cells(0).Text
        tourplace.Text = GridView1.SelectedRow().Cells(1).Text
        DropDownList1.SelectedValue = GridView1.SelectedRow().Cells(2).Text
        tourdays.Text = GridView1.SelectedRow().Cells(3).Text
        touramount.Text = GridView1.SelectedRow().Cells(4).Text
        tourdescription.Text = GridView1.SelectedRow().Cells(5).Text
        txtfrom.Text = GridView1.SelectedRow().Cells(6).Text
        txtto.Text = GridView1.SelectedRow().Cells(7).Text
        tourplace.Focus()
        cmd = New OleDbCommand("select * from package_mst where tour_id=" + HiddenField1.Value + "", cn)
        cn.Open()
        Dim da = New OleDbDataAdapter(cmd)
        da.Fill(ds)
        cn.Close()
        Dim drow As DataRow
        drow = ds.Tables(0).Rows(0)
        i1 = drow(6).ToString
        i2 = drow(7).ToString
        i3 = drow(8).ToString
        Image1.Visible = True
        Image2.Visible = True
        Image3.Visible = True
        Image1.ImageUrl = i1
        Image2.ImageUrl = i2
        Image3.ImageUrl = i3

    End Sub
    Public Sub pkg()
        Dim ds = New DataSet()

        cmd = New OleDbCommand("select * from package_mst where tour_id=" + HiddenField1.Value + "", cn)
        cn.Open()
        Dim da = New OleDbDataAdapter(cmd)
        da.Fill(ds)
        cn.Close()
        Dim drow As DataRow
        drow = ds.Tables(0).Rows(0)
        i1 = drow(6).ToString
        i2 = drow(7).ToString
        i3 = drow(8).ToString

    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Session("USERNAME") = Nothing
        Response.Redirect("custlogin.aspx")
    End Sub


End Class

