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
    public partial class VisualizarPergunta : System.Web.UI.Page
    {
        cLearners.cPerguntasRespostas PerResdb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt;

                string Id = Session["Id_Pergunta"].ToString();

                int IdPergunta = Convert.ToInt32(Id);

                dt = PerResdb.fnConsultarPerguntaPorId(IdPergunta);

                lblTitulo.Text = dt.Rows[0].Field<string>("Titulo");

                lblData.Text = "Data de publicação: " + dt.Rows[0].Field<DateTime>("Dt_Cadastro").ToString("dd/MM/yyyy");

                lblCliente.Text = dt.Rows[0].Field<string>("Nome");

                Descricao.InnerHtml = dt.Rows[0].Field<string>("Descricao");

                RpRespostas.DataSource = PerResdb.fnConsultarRespostaPorIdPerguta(IdPergunta);
                RpRespostas.DataBind();

            }

        }
        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtConteudo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Resposta inválida! *";
                args.IsValid = false;
            }


        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                    " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                if (Page.IsValid)
                {
                    string Id = Session["Id_Pergunta"].ToString();

                    int IdPergunta = Convert.ToInt32(Id);

                    string CPF = Session["usuario"].ToString();
                    DataTable dt = clientedb.fnRetornaId_Cli(CPF);
                    int Id_Cliente = dt.Rows[0].Field<int>("Id_Cliente");
                    DateTime Dt_Cad = DateTime.Now.Date;

                    PerResdb.fnIncluirResposta(Id_Cliente, IdPergunta, txtConteudo.Text, Dt_Cad);

                    Response.Redirect("VisualizarPergunta.aspx");
                }
                
            }

            
        }

        protected void RpRespostas_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataTable dt = PerResdb.fnConsultarUltimasPerguntas();

            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {

                int index = RpRespostas.Items.Count;
                Label Data = (Label)e.Item.FindControl("lblData");

                Data.Text = "Data de Publicação: " + dt.Rows[0].Field<DateTime>("Dt_Cadastro").ToString("dd/MM/yyyy");

            }
        }
    }
}