using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Learners
{
    public partial class AlterarNoticias : System.Web.UI.Page
    {
        cLearners.cWiki wikidb = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                int id = Convert.ToInt32(Session["Id_Wiki"].ToString());
                dt = wikidb.fnConsultarWikiPorId(id);

                txtDtCad.Text = Convert.ToString(dt.Rows[0].Field<DateTime>("Dt_Cadastro"));
                txtResumo.Text = dt.Rows[0].Field<string>("Resumo");
                txtTexto.Text = dt.Rows[0].Field<string>("Descricao");
                txtTitulo.Text = dt.Rows[0].Field<string>("Titulo");
                
            }
        }
        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtDtCad.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Data de Cadastro inválida! *";
                args.IsValid = false;
                txtDtCad.Focus();

            }
            if (txtResumo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Resumo inválido! *";
                args.IsValid = false;
                txtResumo.Focus();

            }
            if (txtTexto.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Notícia inválida! *";
                args.IsValid = false;
                txtTexto.Focus();

            }
            if (txtTitulo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Título inválido! *";
                args.IsValid = false;
                txtTitulo.Focus();

            }
        }


        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            

            if (Page.IsValid)
            {
                if (FileUpload1.HasFile)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);


                    int id = Convert.ToInt32(Session["Id_Wiki"].ToString());
                    string RM = Session["usuario"].ToString();
                    DataTable dt = clientedb.fnRetornaId_Cli(RM);
                    int Id_Cliente = dt.Rows[0].Field<int>("Id_Cliente");
                    HttpPostedFile file = FileUpload1.PostedFile;
                    Byte[] imgbyte = new Byte[file.ContentLength];
                    file.InputStream.Read(imgbyte, 0, file.ContentLength);
                    SqlCommand cmd = new SqlCommand("Exec dbo.AlterarWiki @Id_Wiki, @Id_Dono ,@Imagem, @Descricao, @Resumo, @Dt_Cadastro, @Titulo", con);

                    cmd.Parameters.AddWithValue("@Id_Wiki", id);
                    cmd.Parameters.AddWithValue("@Id_Dono", Id_Cliente);
                    cmd.Parameters.AddWithValue("@Imagem", imgbyte);
                    cmd.Parameters.AddWithValue("@Descricao", txtTexto.Text);
                    cmd.Parameters.AddWithValue("@Resumo", txtResumo.Text);
                    cmd.Parameters.AddWithValue("@Dt_Cadastro", txtDtCad.Text);
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
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

                    int id = Convert.ToInt32(Session["Id_Wiki"].ToString());
                    dt = wikidb.fnConsultarWikiPorId(id);

                    Byte[] imgbyte = (Byte[])dt.Rows[0].Field<Byte[]>("Imagem");
                    SqlCommand cmd = new SqlCommand("Exec dbo.AlterarWiki @Id_Wiki ,@Imagem, @Descricao, @Resumo, @Dt_Cadastro, @Titulo", con);

                    cmd.Parameters.AddWithValue("@Id_Wiki", id);
                    cmd.Parameters.AddWithValue("@Imagem", imgbyte);
                    cmd.Parameters.AddWithValue("@Descricao", txtTexto.Text);
                    cmd.Parameters.AddWithValue("@Resumo", txtResumo.Text);
                    cmd.Parameters.AddWithValue("@Dt_Cadastro", txtDtCad.Text);
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

                Response.Redirect("MinhaConta.aspx");

            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MinhaConta.aspx");
        }
    }
}