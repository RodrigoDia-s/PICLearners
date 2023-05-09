using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;

namespace Learners
{
    
    public partial class CadConta : System.Web.UI.Page
    {

        cLearners.cLogin LoginDB = new cLearners.cLogin(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ContinuarCli.Visible = false;
            
        }
        
        protected void lnkPesquisar_Click(object sender, EventArgs e)
        {
            DataTable dt;
            string RM = txtPesRM.Text;
            dt = clientedb.fnConsultarClientePorRM(RM);
            if (dt.Rows.Count > 0)
            {
                Session["Operacao"] = dt.Rows[0].Field<Int32>("Id_Cliente");
                int id = dt.Rows[0].Field<Int32>("Id_Cliente");
                txtCPF.Text = dt.Rows[0].Field<string>("CPF");
                txtNome.Text = dt.Rows[0].Field<string>("Nome");
           
                txtDataNasc.Text = dt.Rows[0].Field<DateTime>("DatadeNascimento").ToString();
                txtEmail.Text = dt.Rows[0].Field<string>("Email");
     
                if (dt.Rows[0].Field<string>("Sexo")== "Masculino")
                {
                    ckLGenero.Items[0].Selected = true;
                    ckLGenero.Items[1].Selected = false;
                }
                else
                {
                    ckLGenero.Items[0].Selected = false;
                    ckLGenero.Items[1].Selected = true;

                }
               
            }

        }



        
        protected void lnkCadastar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DataTable dt;
               
                cLearners.cClientes clientedb = new cLearners.cClientes(ConfigurationManager.ConnectionStrings["CONEXAO_DB"].ConnectionString);
            
                DateTime datanasc = Convert.ToDateTime(txtDataNasc.Text);
                string sexo;
                if (ckLGenero.SelectedIndex == 0 )
                {
                    sexo = "Masculino";
                }
                else
                {
                  
                    sexo = "Feminino";
                }
                dt = clientedb.fnConsultarClientePorRM(txtPesRM.Text);
                int id = dt.Rows[0].Field<Int32>("Id_Cliente");

                clientedb.fnAlterarClientes(id, txtPesRM.Text, txtCPF.Text, txtNome.Text, sexo, txtEmail.Text,  datanasc);

                dt = clientedb.fnConsultarClientePorRM(txtPesRM.Text);
                Session["Operacao"] = dt.Rows[0].Field<Int32>("Id_Cliente");
                Response.Redirect("CadLogin.aspx");
                CadastrarCli.Visible = false;
                ContinuarCli.Visible = true;
            }
        }

        

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadLogin.aspx");
        }

        protected void Validator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(txtPesRM.Text == string.Empty)
            {

                Validator1.ErrorMessage = "RM inválido! *";
                args.IsValid = false;
                txtPesRM.Focus();
            }
            else if (txtCPF.Text == string.Empty)
            {
                Validator1.ErrorMessage = "CPF inválido! *";
                args.IsValid = false;
                txtCPF.Focus();
            }
            else if (txtDataNasc.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Data inválida! *";
                args.IsValid = false;
                txtDataNasc.Focus();
            }
            else if (txtEmail.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Email inválido! *";
                args.IsValid = false;
                txtEmail.Focus();
            }
            else if (txtNome.Text == string.Empty)
            {
                Validator1.ErrorMessage = "Nome inválido! *";
                args.IsValid = false;
                txtNome.Focus();
            }
           
        }

    }
}
 