using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace cLearners
{
   public  class cCEP
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cCEP(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        DataTable dt;

        public DataTable fnConsultaCEPporCEP(string  cep)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultaCEPporCEP");

            sql.AppendFormat("@Cep = '{0}' ", cep);


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

    }
}
