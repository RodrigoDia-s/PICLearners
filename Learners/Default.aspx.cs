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
    public partial class _Default : Page
    {
        cLearners.cConteudo conteudosdb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RptNoticias.DataSource = conteudosdb.fnConsultarTop4Conteudo();
                RptNoticias.DataBind();

                
            }

        }

        protected void RptNoticias_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataTable dt = conteudosdb.fnConsultarTop4Conteudo(); ;

            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                int index = RptNoticias.Items.Count;

            }
        }

        protected void RptNoticias_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "conteudo")
            {
                Session["Id_Cont"] = e.CommandArgument;

                Response.Redirect("DetalheConteudo.aspx");
            }
            if (e.CommandName == "conteudo2")
            {
                Session["Id_Cont"] = e.CommandArgument;

                Response.Redirect("DetalheConteudo.aspx");
            }
        }
        
    }
}