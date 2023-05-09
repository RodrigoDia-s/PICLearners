using System;
using System.Data;
using System.Data.SqlClient;

namespace cLearners
{
    public class cGeral
    {
        private static SqlConnection cn;
        private static SqlCommand cmd;
        private static SqlDataAdapter da;
        private static SqlDataReader dr;
        private static SqlParameter p;
        private static DataSet ds;
        private static String SQL;
        private static DataTable dt;
        private object connectionString;
        
        public static SqlConnection Conectar(string CS)
        {
            try
            {
                cn = new SqlConnection(CS);
                if (cn.State == ConnectionState.Closed)
                {
                    cn.Open();
                }
                return cn;
            }
            catch (Exception ex)
            {

                throw ex;
            }



        }

        public void Fechar(SqlConnection conexao)
        {
            try
            {
                if (conexao.State == ConnectionState.Open)
                {
                    conexao.Close();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public SqlDataReader RetornarDataReader(string Comando, string CS)
        {
            try
            {
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand(Comando, Conectar(CS));
                dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public DataTable RetornarDataTable(string Comando, string CS)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand(Comando, Conectar(CS));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public DataSet RetornarDataSet(string Comando, string CS)
        {
            try
            {
                DataSet ds = new DataSet();
                SqlCommand cmd = new SqlCommand(Comando, Conectar(CS));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void ExecutarComando(string Comando, string CS)
        {
            try
            {
                cmd = new SqlCommand(Comando, Conectar(CS));
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public int ExecutarComandoRetorno(string Comando, string CS)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = Comando;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = Conectar(CS);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "SELECT @@IDENTITY";
                dr = cmd.ExecuteReader();
                dr.Read();
                return Convert.ToInt32(dr[0]);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
