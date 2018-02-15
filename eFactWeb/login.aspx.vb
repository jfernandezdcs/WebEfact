Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_inicio_Click(sender As Object, e As EventArgs) Handles btn_inicio.Click
        Dim conn = New SqlConnection(ConfigurationManager.ConnectionStrings("efactWeb").ToString)
        Try

            conn.Open()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try

        Dim cmd As New SqlCommand("factBuscaUsuario", conn) '(nombre del procedimiento, cadena de conexion)
        cmd.CommandType = CommandType.StoredProcedure

        'envias los parametros
        cmd.Parameters.AddWithValue("@usuario", txb_usr.Text)
        cmd.Parameters.AddWithValue("@pass", txb_pass.Text)


        Dim adaptador = New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        adaptador.Fill(dt)



        If dt.Rows.Count = 0 Then
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alerta();", True)


        Else
            Dim row As DataRow = dt.Rows(0)

            If row("Estatus") = False Then
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alerta();", True)

            Else
                Session.Add("usr", row("username"))

                Response.Redirect("inicio.aspx")

            End If

        End If
    End Sub
End Class