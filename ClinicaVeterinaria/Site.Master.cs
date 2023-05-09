using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ClinicaVeterinaria
{
    public partial class SiteMaster : MasterPage
    {
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            VerificaSession();
     
        }

        
        protected void VerificaSession()
        {

            if (Session["usuario"] == null)
            {
                utilitarios.Visible = false;
                UserLogin.Visible = false;
                UserLogar.Visible = true;
            }
            else
            {
                if (Session["usuario"].ToString() == "3001831")
                {
                    utilitarios.Visible = true;
                    UserLogin.Visible = true;
                    UserLogar.Visible = false;
                }
                else
                {
                    UserLogar.Visible = false;
                    utilitarios.Visible = false;
                    UserLogin.Visible = true;
                    

                }
            }

        }


    }
}