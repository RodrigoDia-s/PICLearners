using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cLearners
{
    public class cWiki
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cWiki(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        DataTable dt;

        public void fnExcluirWiki(int Id_Wiki)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirWiki");

                sql.AppendFormat("@Id_Wiki = '{0}' ", Id_Wiki);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable fnConsultarWikiPorIdDono(int Id_Dono)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarWikiPorIdDono");
            sql.AppendFormat("@Id_Dono = '{0}' ", Id_Dono);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarWikiPorId(int Id_Wiki)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarWikiPorIdWiki");
            sql.AppendFormat("@Id_Wiki = '{0}' ", Id_Wiki);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarTop4Wiki()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarTop4Wiki");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarTop10Wiki()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarTop10Wiki");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarWiki()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarWiki");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
    }
}
