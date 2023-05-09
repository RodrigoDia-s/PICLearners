using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ClinicaVeterinaria
{
    public partial class MinhasPergintas : System.Web.UI.Page
    {
        cLearners.cPerguntasRespostas perguntasdb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cClientes clientesdb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string CPF = Session["usuario"].ToString();
                DataTable dt = clientesdb.fnRetornaId_Cli(CPF);
                int IdCliente = dt.Rows[0].Field<int>("Id_Cliente");

                RepeaterPerguntas.DataSource = perguntasdb.fnConsultarPerguntaPorIdCli(IdCliente);
                RepeaterPerguntas.DataBind();
            }
        }
        protected void RepeaterPerguntas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "pergunta")
            {
                Session["IdPergunta"] = e.CommandArgument;

                Response.Redirect("VisualizarPergunta.aspx");
            }
        }
    }
}