using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ClinicaVeterinaria
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        cLearners.cConteudo conteudodb = new cLearners.cConteudo(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmmit_Click(object sender, EventArgs e)
        {

          
            DataTable dt4 = conteudodb.fnConsultarUltimoIdC();
           
            int Id_Cont = dt4.Rows[0].Field<int>("Id_Cont_c");
           


                
            conteudodb.fnIncluirPergC(Id_Cont, PergC.Text, Alt1C.Text, Alt2C.Text, Alt3C.Text, Alt4C.Text, AltCorrC.Text);

            PergC.Text = "";
            Alt1C.Text = "";
            Alt2C.Text = "";
            Alt3C.Text = "";
            Alt4C.Text = "";
            AltCorrC.Text = "";
        }

        protected void btnSubmmitPy_Click(object sender, EventArgs e)
        {
           
            DataTable dt3 = conteudodb.fnConsultarUltimoIdPython();
            int Id_Cont = dt3.Rows[0].Field<int>("Id_Cont_python");
 
                
            conteudodb.fnIncluirPergPython(Id_Cont, TxtPergPython.Text, Alt1Py.Text, Alt2Py.Text, Alt3Py.Text, Alt4Py.Text, AltCorrPy.Text);

            TxtPergPython.Text = "";
            Alt1Py.Text = "";
            Alt2Py.Text = "";
            Alt3Py.Text = "";
            Alt4Py.Text = "";
            AltCorrPy.Text = "";

        }

        protected void btnSubmmitSharp_Click(object sender, EventArgs e)
        {





            DataTable dt = conteudodb.fnConsultarUltimoIdSharp();
            int Id_Cont = dt.Rows[0].Field<int>("Id_Cont_sharp");
            

        
            conteudodb.fnIncluirPergSharp(Id_Cont, txtPergSharp.Text, Alt1Sharp.Text, Alt2Sharp.Text, Alt3Sharp.Text, Alt4Sharp.Text, AltCorrSharp.Text);



            txtPergSharp.Text = "";
            Alt1Sharp.Text = "";
            Alt2Sharp.Text = "";
            Alt3Sharp.Text = "";
            Alt4Sharp.Text = "";
            AltCorrSharp.Text = "";


        }

        protected void btnSubmmitJS_Click(object sender, EventArgs e)
        {

          
                DataTable dt2 = conteudodb.fnConsultarUltimoIdScript();
                int Id_Cont = dt2.Rows[0].Field<int>("Id_Cont_script");
            

                
                 conteudodb.fnIncluirPergScript(Id_Cont, txtPergJS.Text, Alt1JS.Text, Alt2JS.Text, Alt3JS.Text, Alt4JS.Text, AltCorrJS.Text);

            txtPergJS.Text = "";
            Alt1JS.Text = "";
            Alt2JS.Text = "";
            Alt3JS.Text = "";
            Alt4JS.Text = "";
            AltCorrJS.Text = "";

        }

        /*rotected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Alt1Sharp.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Alternativa 1 vazia *";
                args.IsValid = false;
                Alt1Sharp.Focus();
            }
             if (Alt2Sharp.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Alternativa 2 vazia *";
                args.IsValid = false;
                Alt2Sharp.Focus();
            }
             if (Alt3Sharp.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Alternativa 3 vazia *";
                args.IsValid = false;
                Alt3Sharp.Focus();
            }
            if( Alt4Sharp.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Alternativa 4 vazia *";
                args.IsValid = false;
                Alt4Sharp.Focus();
            }
            if (AltCorrSharp.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Alternativa correta vazia *";
                args.IsValid = false;
                AltCorrSharp.Focus();
            }
            if (Alt1JS.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa 1 vazia *";
                args.IsValid = false;
                Alt1JS.Focus();
            }
            if (Alt2JS.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa 2 vazia *";
                args.IsValid = false;
                Alt2JS.Focus();
            }
            if (Alt3JS.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa 3 vazia *";
                args.IsValid = false;
                Alt3JS.Focus();
            }
            if (Alt4JS.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa 4 vazia *";
                args.IsValid = false;
                Alt4JS.Focus();
            }
            if (AltCorrJS.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa correta vazia *";
                args.IsValid = false;
                AltCorrJS.Focus();
            }
            if (Alt1Py.Text == string.Empty)
            {
                CustomValidator3.ErrorMessage = "Alternativa 1 vazia *";
                args.IsValid = false;
                Alt1Py.Focus();
            }
            if (Alt2Py.Text == string.Empty)
            {
                CustomValidator3.ErrorMessage = "Alternativa 2 vazia *";
                args.IsValid = false;
                Alt2Py.Focus();
            }
            if (Alt3Py.Text == string.Empty)
            {
                CustomValidator3.ErrorMessage = "Alternativa 3 vazia *";
                args.IsValid = false;
                Alt3Py.Focus();
            }
            if (Alt4Py.Text == string.Empty)
            {
                CustomValidator2.ErrorMessage = "Alternativa 4 vazia *";
                args.IsValid = false;
                Alt4Py.Focus();
            }
            if (AltCorrPy.Text == string.Empty)
            {
                CustomValidator3.ErrorMessage = "Alternativa correta vazia *";
                args.IsValid = false;
                AltCorrPy.Focus();
            }
        }*/

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("noticias.aspx");
        }
    }
}