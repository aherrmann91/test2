Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            messages.DataSource = Me.GetData()
            messages.DataBind()
        End If
    End Sub

    Private Function GetData() As DataSet
        Dim conString As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Development\iis\test2\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"
        Dim query As String = "SELECT * FROM Messages"
        Dim cmd As New SqlCommand(query)
        Using con As New SqlConnection(conString)
            Using sda As New SqlDataAdapter()
                cmd.Connection = con
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.Fill(ds)
                    Return ds
                End Using
            End Using
        End Using
    End Function

End Class