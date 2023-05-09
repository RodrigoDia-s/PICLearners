using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Learners
{
    public partial class Sair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSim_Click(object sender, EventArgs e)
        {

            Session["Usuario"] = null;
            Response.Redirect("Default.aspx");


        }
        protected void btnNao_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");

        }

    }
}