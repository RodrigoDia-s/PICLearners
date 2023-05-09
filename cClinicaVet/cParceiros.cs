using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cClinicaVet
{
    public class cParceiros
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cParceiros(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cClinicaVet.cGeral o = new cClinicaVet.cGeral();

        private static string SQL;
        DataTable dt;

        public DataTable fnListarParceiros()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarParceiros");
            
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarParceirosPorId(int IdParceiro)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarParceirosPorId");

            sql.AppendFormat("@IdParceiro = '{0}' ", IdParceiro);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public void fnExcluirParceiro(int Id_Parceiro)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirParceiro");

                sql.AppendFormat("@Id_Parceiro = '{0}' ", Id_Parceiro);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
