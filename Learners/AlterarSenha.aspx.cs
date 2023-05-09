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
    public partial class AlterarSenha : System.Web.UI.Page
    {
        cLearners.cLogin logindb = new cLearners.cLogin(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                logindb.fnAlterarLoginWeb(txtLogin.Text, txtSenha.Text);
                Session["usuario"] = txtLogin.Text;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "alert('Senha alterada com sucesso!');" +
                    " window.location='" +Request.ApplicationPath + "Default.aspx';", true);

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
            else if (txtConfirmaSenha.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Usuario e/ou senha inválidos! *";
                args.IsValid = false;

            }
            else if (txtConfirmaSenha.Text != txtSenha.Text)
            {
                Validator1.ErrorMessage = "Senhas diferentes!! *";
                args.IsValid = false;

            }


        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}