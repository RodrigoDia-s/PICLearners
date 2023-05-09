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
    public partial class QuestionarioPY : System.Web.UI.Page
    {
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cConteudo conteudodb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                BindGrid();
            }
        }
        public void BindGrid()
        {
            string val2 = Request.QueryString["valor"].ToString();
            int val = Convert.ToInt32(val2);
            dt = conteudodb.fnConsultarPerguntasPorPython(val);
            grdquestions.DataSource = dt;
            grdquestions.DataBind();
        }
        protected void grdquestions_RowDataBound(Object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                RadioButtonList rdlstOptions = (RadioButtonList)e.Row.FindControl("tblOptions");
                HiddenField hdnquestionId = (HiddenField)e.Row.FindControl("hdnquestionId");
                if (rdlstOptions != null && hdnquestionId != null)
                {
                    DataRow[] DataSourceSelectResultProcessingOptions = dt.Select("Id_Perg_python = " + (Convert.ToInt32(hdnquestionId)));
                    DataView view = new DataView();
                    view.Table = dt;
                    view.RowFilter = "Id_Perg_python" + (Convert.ToInt32(hdnquestionId.Value));
                    if (view.Table.Rows.Count > 0)
                    {
                        DataTable dt1 = new DataTable();
                        dt1 = view.ToTable();
                    }

                }
            }
        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            int count = 0;
            btnSubmit.OnClientClick = "this.disabled = true";
            btnContinuar.Visible = true;
            foreach (GridViewRow di in grdquestions.Rows)
            {
                RadioButton rb1 = (RadioButton)di.FindControl("rdOption1");
                Label labcorrectans = (Label)di.FindControl("lblAnswer");
                labcorrectans.Visible = true;
                if (rb1.Checked == true)
                {
                    if (rb1.Text.Equals(labcorrectans.Text))
                    {
                        Label Userselectedans = (Label)di.FindControl("lbquestionstatus");
                        Userselectedans.Text = "A alternativa selecionada é<b>" + rb1.Text.ToString() + "</b>";
                        Userselectedans.ForeColor = System.Drawing.Color.Green;
                        count++;
                    }
                    else
                    {
                        Label Wrongans = (Label)di.FindControl("lbquestionstatus");
                        Wrongans.Text = "A alternativa selecionada <b>" + rb1.Text.ToString() + "</b> está errada";
                        Wrongans.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            foreach (GridViewRow di in grdquestions.Rows)
            {
                RadioButton rb2 = (RadioButton)di.FindControl("rdOption2");
                Label labcorrectans = (Label)di.FindControl("lblAnswer");
                labcorrectans.Visible = true;
                if (rb2.Checked == true)
                {
                    if (rb2.Text.Equals(labcorrectans.Text))
                    {
                        Label Userselectedans = (Label)di.FindControl("lbquestionstatus");
                        Userselectedans.Text = "A alternativa selecionada é<b>" + rb2.Text.ToString() + "</b>";
                        Userselectedans.ForeColor = System.Drawing.Color.Green;
                        count++;
                    }
                    else
                    {
                        Label Wrongans = (Label)di.FindControl("lbquestionstatus");
                        Wrongans.Text = "A alternativa selecionada <b>" + rb2.Text.ToString() + "</b> está errada";
                        Wrongans.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            foreach (GridViewRow di in grdquestions.Rows)
            {
                RadioButton rb3 = (RadioButton)di.FindControl("rdOption3");
                Label labcorrectans = (Label)di.FindControl("lblAnswer");
                labcorrectans.Visible = true;
                if (rb3.Checked == true)
                {
                    if (rb3.Text.Equals(labcorrectans.Text))
                    {
                        Label Userselectedans = (Label)di.FindControl("lbquestionstatus");
                        Userselectedans.Text = "A alternativa selecionada é<b>" + rb3.Text.ToString() + "</b>";
                        Userselectedans.ForeColor = System.Drawing.Color.Green;
                        count++;
                    }
                    else
                    {
                        Label Wrongans = (Label)di.FindControl("lbquestionstatus");
                        Wrongans.Text = "A alternativa selecionada <b>" + rb3.Text.ToString() + "</b> está errada";
                        Wrongans.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            foreach (GridViewRow di in grdquestions.Rows)
            {
                RadioButton rb4 = (RadioButton)di.FindControl("rdOption4");
                Label labcorrectans = (Label)di.FindControl("lblAnswer");
                labcorrectans.Visible = true;
                if (rb4.Checked == true)
                {
                    if (rb4.Text.Equals(labcorrectans.Text))
                    {
                        Label Userselectedans = (Label)di.FindControl("lbquestionstatus");
                        Userselectedans.Text = "A alternativa selecionada é <b>" + rb4.Text.ToString() + "</b>";
                        Userselectedans.ForeColor = System.Drawing.Color.Green;
                        count++;
                    }
                    else
                    {
                        Label Wrongans = (Label)di.FindControl("lbquestionstatus");
                        Wrongans.Text = "A alternativa selecionada <b>" + rb4.Text.ToString() + "</b> está errada";
                        Wrongans.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }


            string Id = Session["usuario"].ToString();
            int id = Convert.ToInt32(Id);

            string val2 = Request.QueryString["valor"].ToString();
            int val = Convert.ToInt32(val2);

           
            conteudodb.fnIncluirPontuacaoPython(val, id, count);
        }

        protected void btnContClick(object sender, EventArgs e)
        {
            Response.Redirect("noticias.aspx");
        }
    }
}