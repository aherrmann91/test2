Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim strConn As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Development\iis\test2\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"
        Dim sqlConnection1 As New System.Data.SqlClient.SqlConnection(strConn)

        Dim cmd As New System.Data.SqlClient.SqlCommand
        cmd.CommandType = System.Data.CommandType.Text
        cmd.CommandText = "INSERT INTO Messages (name, email, subject, message) VALUES ('" + Request.Form("name") + "', '" + Request.Form("email") + "', '" + Request.Form("subject") + "', '" + Request.Form("S1") + "')"
        cmd.Connection = sqlConnection1

        sqlConnection1.Open()
        cmd.ExecuteNonQuery()
        sqlConnection1.Close()
    End Sub
End Class