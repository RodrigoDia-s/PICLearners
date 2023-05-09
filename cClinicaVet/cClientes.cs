using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cLearners
{
    public  class cClientes
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cClientes(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        DataTable dt;

        public void fnIncluirClientes( 
                                        string RM,
                                        string CPF,
                                        string Nome, 
                                        string Genero,
                                        string Email,
                                        DateTime Dt_Nasc)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirClientes");

                sql.AppendFormat("@RM = '{0}' ", RM);

                sql.AppendFormat(",@CPF = '{0}' ", CPF);

                sql.AppendFormat(",@Nome = '{0}' ", Nome);

                sql.AppendFormat(",@Genero = '{0}' ", Genero);


                sql.AppendFormat(",@Email = '{0}' ", Email);

                sql.AppendFormat(",@Dt_Nascimento = '{0}' ", Dt_Nasc);
                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnAlterarClientes(  int Id_Cli,
                                        string RM,
                                        string CPF,
                                        string Nome,
                                        string Genero,
                                        string Email,
                                        DateTime Dt_Nasc)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.AlterarClientes");

                sql.AppendFormat("@Id_Cli = '{0}'", Id_Cli);
                sql.AppendFormat(",@RM = '{0}' ", RM);

                sql.AppendFormat(",@CPF = '{0}' ", CPF);

                sql.AppendFormat(",@Nome = '{0}' ", Nome);

                sql.AppendFormat(",@Genero = '{0}' ", Genero);


                sql.AppendFormat(",@Email = '{0}' ", Email);

                sql.AppendFormat(",@Dt_Nascimento = '{0}' ", Dt_Nasc);
                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void fnAlterarLoginWeb(int id_Cli,
                                        string RM,
                                        string CPF,
                                        string Nome,
                                        string Genero,
                                        string Email,
                                        DateTime Dt_Nasc)
        {
            try
            {
                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.AlterarLoginWeb");

                sql.AppendFormat("@Id_Cli = '{0}' ", id_Cli);

                sql.AppendFormat(",@RM= '{0}' ", RM);

                sql.AppendFormat(",@CPF = '{0}' ", CPF);

                sql.AppendFormat(",@Nome = '{0}' ", Nome);

                sql.AppendFormat(",@Genero = '{0}' ", Genero);


                sql.AppendFormat(",@Email = '{0}' ", Email);

                sql.AppendFormat(",@Dt_Nascimento = '{0}' ", Dt_Nasc);

                SQL = sql.ToString();
                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable fnConsultarClientePorIdCliente(Int32 Id_cli)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultaClientePorIdCli");

            sql.AppendFormat("@IdCli = '{0}' ", Id_cli);


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnRetornaId_Cli(string RM)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.RetornaIdCli");

            sql.AppendFormat("@RM = '{0}' ", RM);


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarClientePorRM(string RM)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultaClientePorRM");

            sql.AppendFormat("@RM = '{0}' ", RM);


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

       
    }
}
