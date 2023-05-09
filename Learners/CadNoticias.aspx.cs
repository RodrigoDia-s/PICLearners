using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Learners
{
    public partial class CadNoticias : System.Web.UI.Page
    {
        cLearners.cConteudo conteudodb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {





            conteudodb.fnIncluirContSharp(TextBoxSharp.Text);
            conteudodb.fnIncluirContScript( TextBoxJS.Text);
            conteudodb.fnIncluirContPython(TextBoxPy.Text);
             conteudodb.fnIncluirContC(TextBoxC.Text);



            DataTable dt = conteudodb.fnConsultarUltimoIdSharp();
            DataTable dt2 = conteudodb.fnConsultarUltimoIdScript();
            DataTable dt3 = conteudodb.fnConsultarUltimoIdPython();
            DataTable dt4 = conteudodb.fnConsultarUltimoIdC();
          
                int Id_cont_sharp = dt.Rows[0].Field<int>("Id_Cont_sharp");
         
            int Id_cont_script = dt2.Rows[0].Field<int>("Id_Cont_script");
            int Id_cont_python = dt3.Rows[0].Field<int>("Id_Cont_python");
            int Id_cont_c = dt4.Rows[0].Field<int>("Id_Cont_c");

            DateTime DataCad = Convert.ToDateTime(txtDtCad.Text);

            conteudodb.fnIncluirConteudo(Id_cont_sharp, Id_cont_script, Id_cont_python, Id_cont_c, txtTexto.Text, txtResumo.Text, DataCad, txtTitulo.Text);

            Response.Redirect("CadPergNoti.aspx");

        }
        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtDtCad.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Data de cadastro inválida! *";
                args.IsValid = false;
                txtDtCad.Focus();
            }
            else if (txtResumo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Resumo inválido! *";
                args.IsValid = false;
                txtResumo.Focus();
            }
            else if (txtTexto.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Texto inválido! *";
                args.IsValid = false;
                txtTexto.Focus();

            }
            else if (txtTitulo.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Título inválido! *";
                args.IsValid = false;
                txtTitulo.Focus();
            }


        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaNoticias.aspx");
        }

        
    }
}