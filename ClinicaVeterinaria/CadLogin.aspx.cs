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
    public partial class CadLogin : System.Web.UI.Page
    {

      
            protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Operacao"] != null)
            {

                int id;
                DataTable dt;
                id = Convert.ToInt32(Session["Operacao"]);

                cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
                dt = clientedb.fnConsultarClientePorIdCliente(id);
                txtLogin.Text = dt.Rows[0].Field<string>("RM");
            }
        }

        protected void lnkCadastar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id;
                DataTable dt;
                id = Convert.ToInt32(Session["Operacao"]);
                cLearners.cLogin logindb = new cLearners.cLogin(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
                logindb.fnIncluirLogin(txtLogin.Text, txtSenha.Text, id);
                Session["Usuario"] = txtLogin.Text;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bem-Vindo ao the learners! Obrigado por nos escolher ♥♥♥')", true);
                Response.Redirect("Default.aspx");
            
            }

        }

        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtLogin.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Usuario e/ou senha inválidos! *";
                args.IsValid = false;
            }
            else if (txtSenha.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Usuario e/ou senha inválidos! *";
                args.IsValid = false;
            }
           
            
        }

    }
}