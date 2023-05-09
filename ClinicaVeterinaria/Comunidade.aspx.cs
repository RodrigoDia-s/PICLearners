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
    public partial class Comunidade : System.Web.UI.Page
    {
        cLearners.cWiki wikidb = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
       
        cLearners.cWiki wikidb2 = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        
        cLearners.cPerguntasRespostas perguntasdb = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cPerguntasRespostas perguntasdb2 = new cLearners.cPerguntasRespostas(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregaAnimaisPerdidosHome();
                CarregaAnimaisPerdidos();
                CarregarPerguntasHome();
                CarregarPerguntas();
            }
        }

     
                protected void CarregaAnimaisPerdidos()
                {
                    RptAnimaisPerdido.DataSource = wikidb.fnConsultarTop10Wiki();
                    RptAnimaisPerdido.DataBind();



                }
                protected void CarregaAnimaisPerdidosHome()
                {
                    Repeater1.DataSource = wikidb2.fnConsultarTop4Wiki();
                    Repeater1.DataBind();



                }

                public void CarregarPerguntas()
                {
                    Repeater2.DataSource = perguntasdb.fnConsultarUltimasPerguntas();
                    Repeater2.DataBind();
                }
                public void CarregarPerguntasHome()
                {
                    RepeaterPerguntas3.DataSource = perguntasdb2.fnConsultarTop3Perguntas();
                    RepeaterPerguntas3.DataBind();
                }



         



        protected void RepeaterPerguntas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "pergunta")
            {
                Session["Id_Pergunta"] = e.CommandArgument;

                Response.Redirect("VisualizarPergunta.aspx");
            }
        }


        protected void RepeaterPerguntas_ItemCommand2(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "perguntas")
            {
                Session["Id_Pergunta"] = e.CommandArgument;

                Response.Redirect("VisualizarPergunta.aspx");
            }
        }
        protected void RptAnimaisPerdido_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataTable dt = wikidb.fnConsultarTop10Wiki();

            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                int index = RptAnimaisPerdido.Items.Count;
                ImageMap img = (ImageMap)e.Item.FindControl("ImgWiki");
                Label DtPublicacao = (Label)e.Item.FindControl("lblDt_cad");

                byte[] bytes = (byte[])dt.Rows[index].Field<byte[]>("Imagem");
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                img.ImageUrl = "data:Imagem/png;base64," + base64String;
                DtPublicacao.Text = "Data de Publicação: " + dt.Rows[index].Field<DateTime>("Dt_Cadastro").ToString("dd/MM/yyyy");


            }
        }

        protected void RptAnimaisPerdido_ItemDataBound2(object sender, RepeaterItemEventArgs e)
        {
            DataTable dt = wikidb2.fnConsultarTop4Wiki();

            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                int index = Repeater1.Items.Count;
                ImageMap img = (ImageMap)e.Item.FindControl("ImgWiki2");
                Label DtPublicacao = (Label)e.Item.FindControl("lblDt_cadastro");

                byte[] bytes = (byte[])dt.Rows[index].Field<byte[]>("Imagem");
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                img.ImageUrl = "data:Imagem/png;base64," + base64String;
                DtPublicacao.Text = "Data de Publicação: " + dt.Rows[index].Field<DateTime>("Dt_Cadastro").ToString("dd/MM/yyyy");


            }
        }

        protected void RptAnimaisPerdido_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "wiki")
            {
                Session["Id_Wiki"] = e.CommandArgument;

                Response.Redirect("DetalheNoticiaPortal.aspx");
            }
        }

        protected void RptAnimaisPerdido_ItemCommand2(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "wiki2")
            {
                Session["Id_Wiki"] = e.CommandArgument;

                Response.Redirect("DetalheNoticiaPortal.aspx");
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
        protected void lnkCadWiki_Click(object sender, EventArgs e)
        {

            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                Response.Redirect("CadWiki.aspx");
            }
        }



    }
}