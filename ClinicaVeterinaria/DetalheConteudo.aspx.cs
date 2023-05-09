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
    public partial class WebForm2 : System.Web.UI.Page
    {
        cLearners.cConteudo conteudodb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt = conteudodb.fnConsultarConteudoPorId(Convert.ToInt32(Session["Id_Cont"].ToString()));

                lblTitulo.Text = dt.Rows[0].Field<string>("Titulo");


                conteudo.InnerHtml = dt.Rows[0].Field<string>("Descricao");


                int sharp = dt.Rows[0].Field<int>("Id_Cont_sharp");
                int script = dt.Rows[0].Field<int>("Id_Cont_script");
                int python = dt.Rows[0].Field<int>("Id_Cont_python");
                int c = dt.Rows[0].Field<int>("Id_Cont_c");


                DataTable dt2 = conteudodb.fnConsultarSharpPorConteudo(sharp);
              
               
                Csharp.InnerHtml = dt2.Rows[0].Field<string>("Descricao");



                DataTable dt3 = conteudodb.fnConsultarScriptPorConteudo(script);
               
                JS.InnerHtml = dt3.Rows[0].Field<string>("Descricao");


                DataTable dt4 = conteudodb.fnConsultarPythonPorConteudo(python);
               
                Py.InnerHtml = dt4.Rows[0].Field<string>("Descricao");



                DataTable dt5 = conteudodb.fnConsultarCPorConteudo(c);
               
                linguagemc.InnerHtml = dt5.Rows[0].Field<string>("Descricao");

            }
        }


       protected void btnSharp_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                DataTable dt = conteudodb.fnConsultarConteudoPorId(Convert.ToInt32(Session["Id_Cont"].ToString()));
                int sharp = dt.Rows[0].Field<int>("Id_Cont_sharp");
                
                Response.Redirect("Questionario.aspx?valor="+sharp);
            }
        }
        protected void btnJS_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                DataTable dt = conteudodb.fnConsultarConteudoPorId(Convert.ToInt32(Session["Id_Cont"].ToString()));
                int script = dt.Rows[0].Field<int>("Id_Cont_script");

                Response.Redirect("QuestionarioJSaspx.aspx?valor=" + script);
            }
        }
        protected void btnPy_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                DataTable dt = conteudodb.fnConsultarConteudoPorId(Convert.ToInt32(Session["Id_Cont"].ToString()));
                int python = dt.Rows[0].Field<int>("Id_Cont_python");

                Response.Redirect("QuestionarioPY.aspx?valor=" + python);
            }
        }
        protected void btnC_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Por favor, efetue o login primeiro!');" +
                     " window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            else
            {
                DataTable dt = conteudodb.fnConsultarConteudoPorId(Convert.ToInt32(Session["Id_Cont"].ToString()));
                int c = dt.Rows[0].Field<int>("Id_Cont_c");

                Response.Redirect("QuestionarioC.aspx?valor=" + c);
            }
        }
    }
}