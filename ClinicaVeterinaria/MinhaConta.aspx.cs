using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ClinicaVeterinaria
{
    public partial class MinhaConta : System.Web.UI.Page

    {

        
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cWiki wikidb = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cPerguntasRespostas perguntasdb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cConteudo conteudodb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


            string RM = Session["usuario"].ToString();
            DataTable dt = clientedb.fnConsultarClientePorRM(RM);
            int id_cli = dt.Rows[0].Field<Int32>("Id_Cliente");
            lblRM.Text = dt.Rows[0].Field<string>("RM");
            lblNome.Text = dt.Rows[0].Field<string>("Nome");
            lblSexo.Text = dt.Rows[0].Field<string>("Sexo");

            lblCPF.Text = dt.Rows[0].Field<string>("CPF");
           
            lblEmail.Text = dt.Rows[0].Field<string>("Email");
            lblDtNasc.Text = dt.Rows[0].Field<DateTime>("DataDeNascimento").ToString("dd/MM/yyyy");

            int RM2 = Convert.ToInt32(RM);
            DataTable dt2 = conteudodb.fnConsultarPontSharpIdCli(RM2);
           
           


           if(dt2.Rows.Count == 0)
            {
                SharpDiv.Visible = false;
            }
            else
            {
                SharpDiv.Visible = true;
                int id_perg = dt2.Rows[0].Field<int>("Id_Cont_sharp");
                RepeaterSharp.DataSource = conteudodb.fnConsultarPontTituloSharp(RM2, id_perg);
                RepeaterSharp.DataBind();
            }

            dt2 = conteudodb.fnConsultarPontScriptIdCli(RM2);
           
            if (dt2.Rows.Count == 0)
            {
                ScriptDiv.Visible = false;
            }   
            else
            {
                ScriptDiv.Visible = true;
                int id_perg = dt2.Rows[0].Field<int>("Id_Cont_script");
                Repeaterjs.DataSource = conteudodb.fnConsultarPontTituloScript(RM2, id_perg);
                Repeaterjs.DataBind();
            }


            dt2 = conteudodb.fnConsultarPontPythonIdCli(RM2);
           
            if (dt2.Rows.Count == 0)
            {
                PythonDiv.Visible = false;
            }
            else
            {
                PythonDiv.Visible = true;
                int id_perg = dt2.Rows[0].Field<int>("Id_Cont_python");
                RepeaterPython.DataSource = conteudodb.fnConsultarPontTituloPython(RM2, id_perg);
                RepeaterPython.DataBind();
            }



            dt2 = conteudodb.fnConsultarPontCIdCli(RM2);
           
            if (dt2.Rows.Count == 0)
            {
                CDiv.Visible = false;
            }
            else
            {
               int id_perg = dt2.Rows[0].Field<int>("Id_Cont_c");
                CDiv.Visible = true;

                RepeaterC.DataSource = conteudodb.fnConsultarPontTituloC(RM2, id_perg);
                RepeaterC.DataBind();
            }
            dt = perguntasdb.fnConsultarPerguntaPorIdCli(id_cli);
            if(dt == null)
            {
                PerguntasDiv.Visible = false;
            }
            else
            {
                PerguntasDiv.Visible = true;
                GridPerguntas .DataSource = perguntasdb.fnConsultarPerguntaPorIdCli(id_cli);
                GridPerguntas.DataBind();
            }

            dt = perguntasdb.fnConsultarRespostaPorIdCli(id_cli);
            if (dt == null)
            {
                RespostasDiv.Visible = false;
            }
            else
            {
                RespostasDiv.Visible = true;
                GridRespostas.DataSource = perguntasdb.fnConsultarRespostaPorIdCli(id_cli);
                GridRespostas.DataBind();
            }



            dt = wikidb.fnConsultarWikiPorIdDono(id_cli);
            if (dt == null)
            {
                AnimaisPerdidos.Visible = false;
            }
            else
            {
                AnimaisPerdidos.Visible = true;
                GridAnimalPerdido.DataSource = wikidb.fnConsultarWikiPorIdDono(id_cli);
                GridAnimalPerdido.DataBind();
            }

        }

       
     


        protected void GridAnimalPerdido_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                int id = Convert.ToInt32(GridAnimalPerdido.DataKeys[e.RowIndex].Value);
               wikidb.fnExcluirWiki(id);
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro excluido com sucesso!')", true);
                Response.Redirect("MinhaConta.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Operação cancelada!')", true);
            }
        }

        protected void GridAnimalPerdido_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = Convert.ToInt32(GridAnimalPerdido.DataKeys[e.NewEditIndex].Value);
            Session["Id_Wiki"] = id;
            Response.Redirect("AlterarNoticias.aspx");

        }

        protected void btnCadWiki_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadWiki.aspx");
        }



        protected void GridPerguntas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                int id = Convert.ToInt32(GridPerguntas.DataKeys[e.RowIndex].Value);
                perguntasdb.fnExcluirRespostasPorIdPergunta(id);
                perguntasdb.fnExcluirPerguntas(id);
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro excluido com sucesso!')", true);
                Response.Redirect("MinhaConta.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Operação cancelada!')", true);
            }
        }

        protected void GridPerguntas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = Convert.ToInt32(GridPerguntas.DataKeys[e.NewEditIndex].Value);
            Session["Id_Pergunta"] = id;
            Response.Redirect("VisualizarPergunta.aspx");

        }


        protected void GridRespostas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                int id = Convert.ToInt32(GridRespostas.DataKeys[e.RowIndex].Value);
                perguntasdb.fnExcluirRespostas(id);
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro excluido com sucesso!')", true);
                Response.Redirect("MinhaConta.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Operação cancelada!')", true);
            }
        }

        protected void GridRespostas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = Convert.ToInt32(GridPerguntas.DataKeys[e.NewEditIndex].Value);
            Session["Id_Pergunta"] = id;
            Response.Redirect("VisualizarPergunta.aspx");

        }


        protected void btnCadPergunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadPergunta.aspx");
        }
    }
}
