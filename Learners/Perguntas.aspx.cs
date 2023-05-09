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
    public partial class Perguntas : System.Web.UI.Page
    {

        cLearners.cPerguntasRespostas perguntasdb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RepeaterPerguntas.DataSource = perguntasdb.fnConsultarPerguntas();
                RepeaterPerguntas.DataBind();
            }
        }

        protected void lnkCadPergunta_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                Response.Redirect("CadPergunta.aspx");

            }
        }



        protected void RepeaterPerguntas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "perguntas")
            {
                Session["Id_Pergunta"] = e.CommandArgument;

                Response.Redirect("VisualizarPergunta.aspx");
            }
        }
    }
}