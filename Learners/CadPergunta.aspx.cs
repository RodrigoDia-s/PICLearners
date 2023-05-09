using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Learners
{
    public partial class CadPergunta : System.Web.UI.Page
    {

        cLearners.cPerguntasRespostas perguntadb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkRegistrar_Click(object sender, EventArgs e)

        {
            if (Page.IsValid)
            {

                string CPF = Session["usuario"].ToString();
                DataTable dt = clientedb.fnRetornaId_Cli(CPF);
                int Id_Cliente = dt.Rows[0].Field<int>("Id_Cliente");
                DateTime Dt_Cad = DateTime.Now.Date;

                perguntadb.fnIncluirPergunta(Id_Cliente, txtTitulo.Text, txtDescricao.Text, Dt_Cad);

                Response.Redirect("Perguntas.aspx");
            }
        }

        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtDescricao.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Descrição inválida! *";
                args.IsValid = false;
                txtDescricao.Focus();
            }
            else if (txtTitulo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Título inválido! *";
                args.IsValid = false;
            }
            

        }

    }
}