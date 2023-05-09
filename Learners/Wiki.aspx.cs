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
    public partial class AnimaisPerdidos : System.Web.UI.Page
    {
        cLearners.cWiki wikidb = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RptAnimaisPerdido.DataSource = wikidb.fnConsultarWiki();
                RptAnimaisPerdido.DataBind();
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
                Response.Redirect("CadWiki.aspx");
            }
        }


        protected void RptAnimaisPerdido_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataTable dt = wikidb.fnConsultarWiki();

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
        protected void RptAnimaisPerdido_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "wiki")
            {
                Session["Id_Wiki"] = e.CommandArgument;

                Response.Redirect("DetalheNoticiaPortal.aspx");
            }
        }



        
    }
}