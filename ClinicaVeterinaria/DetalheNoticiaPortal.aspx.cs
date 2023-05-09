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
    public partial class DetalheNoticiaPortal : System.Web.UI.Page
    {
        cLearners.cWiki wikidb = new cLearners.cWiki(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                DataTable dt = wikidb.fnConsultarWikiPorId(Convert.ToInt32(Session["Id_Wiki"].ToString()));

                lblTitulo.Text = dt.Rows[0].Field<string>("Titulo");
                byte[] bytes = (byte[])dt.Rows[0].Field<byte[]>("Imagem");
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                ImgNoticia.ImageUrl = "data:Imagem/png;base64," + base64String;
                noticia.InnerHtml = dt.Rows[0].Field<string>("Descricao");
            }
        }
    }
}