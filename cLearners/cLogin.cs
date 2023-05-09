using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cLearners
{
   public class cLogin
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }
        public string RM { get; set; }

        public cLogin(string connectionString)
        {
            ConnectionString = connectionString;
        }
        
        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        private static DataTable dt;


        public void fnIncluirLogin(string RM, string Senha, int IdCli)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirLoginWeb");

                sql.AppendFormat("@RM = '{0}' ", RM);

                sql.AppendFormat(",@Senha = '{0}' ", Senha);

                sql.AppendFormat(",@Id_Cli = '{0}' ", IdCli);

                SQL = sql.ToString();
                
                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void fnAlterarLoginWeb(string login, string Senha)
        {
            try
            {
                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.AlterarLoginWeb");

                sql.AppendFormat("@RM = '{0}' ", login);
                
                sql.AppendFormat(",@Senha = '{0}' ", Senha);

                SQL = sql.ToString();
                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable fnLogar(string RM, string Senha)
        {
            try
            {
                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ConsultaLoginWebPorRMeSenha");

                sql.AppendFormat("@RM = '{0}' ", RM);

                sql.AppendFormat(",@Senha = '{0}' ", Senha);

                SQL = sql.ToString();
                dt = o.RetornarDataTable(SQL, ConnectionString);
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public DataTable fnConsultarLoginPorCPF()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultaLoginWebPorRM");

            sql.AppendFormat("@RM = '{0}' ", RM);


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
    }
}