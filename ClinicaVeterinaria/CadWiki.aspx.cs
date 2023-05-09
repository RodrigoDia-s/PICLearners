using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ClinicaVeterinaria
{
    public partial class CadAnimaisPerdidos : System.Web.UI.Page
    {
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
                if (Page.IsValid)
                {

                    if (FileUpload1.HasFile)
                    {

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

                        DateTime DataCad = Convert.ToDateTime(txtDtCad.Text);
                        string RM = Session["usuario"].ToString();
                        DataTable dt = clientedb.fnRetornaId_Cli(RM);
                        int Id_Cliente = dt.Rows[0].Field<int>("Id_Cliente");
                        HttpPostedFile file = FileUpload1.PostedFile;
                        Byte[] imgbyte = new Byte[file.ContentLength];
                        file.InputStream.Read(imgbyte, 0, file.ContentLength);
                        SqlCommand cmd = new SqlCommand("Exec dbo.IncluirWiki @Id_Dono, @Imagem , @Descricao , @Resumo, @Dt_Cadastro, @Titulo ", con);
                        cmd.Parameters.AddWithValue("@Id_Dono", Id_Cliente);
                        cmd.Parameters.AddWithValue("@Imagem", imgbyte);
                        cmd.Parameters.AddWithValue("@Descricao", txtTexto.Text);
                        cmd.Parameters.AddWithValue("@Resumo", txtResumo.Text);
                        cmd.Parameters.AddWithValue("@Dt_Cadastro", DataCad);
                        cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                        try
                        {
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                        catch (Exception ex)
                        {

                            throw ex;
                        }
                    }

                    Response.Redirect("Wiki.aspx");

                }
            

        }
        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (txtDtCad.Text == string.Empty )
            {
                Validator1.ErrorMessage = "Data de cadastro inválida! *";
                args.IsValid = false;
                txtDtCad.Focus();
            }
            else if (txtResumo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Resumo inválido! *";
                args.IsValid = false;
                txtResumo.Focus();
            }
            else if (txtTexto.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Texto inválido! *";
                args.IsValid = false;
                txtTexto.Focus();

            }
            else if (txtTitulo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Título inválido! *";
                args.IsValid = false;
                txtTitulo.Focus();
            }


        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Wiki.aspx");
        }
    }
}