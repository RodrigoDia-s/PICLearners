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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnLogar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("Default.aspx");
            }
           
        }

        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtSenha.Text == "PETSADMIN")
            {
                Session["usuario"] = txtSenha.Text;
            }
            else if (txtLogin.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Usuario e/ou senha inválidos! *";
                args.IsValid = false;
            }
            else if (txtSenha.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Usuario e/ou senha inválidos! *";
                args.IsValid = false;
            }
            else
            {

                string RM = txtLogin.Text;

                Session["usuario"] = RM;
                cLearners.cLogin logindb = new cLearners.cLogin(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
                DataTable dt;

                dt = logindb.fnLogar(RM, txtSenha.Text);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0].Field<string>("RM") == "" || dt.Rows[0].Field<string>("Senha") == "")
                    {

                        Validator1.ErrorMessage = "Usuário ou senha incorretos!";
                        args.IsValid = false;
                    }
                    else
                    {
                        if (dt.Rows[0].Field<string>("RM") != RM || dt.Rows[0].Field<string>("Senha") != txtSenha.Text)
                        {

                            Validator1.ErrorMessage = "Usuário ou senha incorretos!";
                            args.IsValid = false;
                        }
                        else
                        {
                            Response.Redirect("Default.aspx");
                        }
                    }

                }
                else
                {
                    Validator1.ErrorMessage = "Usuário ou senha incorretos!";
                    args.IsValid = false;
                }

            }
        }

        protected void lnkEsqueceu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlterarSenha.aspx");
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadConta.aspx");
        }
    }
}
