using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace cLearners
{
    public class cPerguntasRespostas
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cPerguntasRespostas(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        private static DataTable dt;
        
        #region"Perguntas"
        //Perguntas

        public void fnIncluirPergunta(int Id_CliPer, string Titulo, string Descricao, DateTime Dt_Cadastro)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPerguntas");

                sql.AppendFormat("@Id_CliPer = '{0}' ", Id_CliPer);

                sql.AppendFormat(",@Titulo = '{0}' ", Titulo);

                sql.AppendFormat(",@Descricao = '{0}' ", Descricao);

                sql.AppendFormat(",@Dt_Cadastro= '{0}' ", Dt_Cadastro);
                
                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnAlterarPergunta(int Id_Pergunta, int Id_CliPer, string Titulo, string Descricao, DateTime Dt_Cadastro)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.AlterarPerguntas");

                sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);

                sql.AppendFormat(",@Id_CliPer = '{0}' ", Id_CliPer);

                sql.AppendFormat(",@Titulo = '{0}' ", Titulo);

                sql.AppendFormat(",@Descricao = '{0}' ", Descricao);

                sql.AppendFormat(",@Dt_Cadastro= '{0}' ", Dt_Cadastro);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnExcluirPerguntas(int Id_Pergunta)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirPerguntas");

                sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);
                
                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable fnConsultarUltimasPerguntas()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarUltimasPerguntas");
                      
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarTop3Perguntas()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarTop3Perguntas");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarPerguntas()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntas");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarPerguntaPorId( Int32 Id_Pergunta)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntaPorId");

            sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultar(Int32 Id_Pergunta)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntaPorId");

            sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarPerguntaPorIdCli(Int32 Id_Cliente)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntaPorCliente");

            sql.AppendFormat("@Id_Cliente = '{0}' ", Id_Cliente);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarRespostaPorIdCli(Int32 Id_Cliente)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarRespostaPorCliente");

            sql.AppendFormat("@Id_Cliente = '{0}' ", Id_Cliente);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        #endregion

        #region"Respostas"
        public void fnIncluirResposta(int Id_CliRes, int Id_Pergunta, string Descricao, DateTime Dt_Cadastro)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirResposta");

                sql.AppendFormat("@Id_CliRes = '{0}' ", Id_CliRes);

                sql.AppendFormat(",@Id_Pergunta = '{0}' ", Id_Pergunta);
                               
                sql.AppendFormat(",@Descricao = '{0}' ", Descricao);

                sql.AppendFormat(",@Dt_Cadastro= '{0}' ", Dt_Cadastro);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnAlterarResposta(int Id_Resposta, string Descricao, DateTime Dt_Cadastro)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.AlterarResposta");

                sql.AppendFormat("@Id_Resposta = '{0}' ", Id_Resposta);
                
                sql.AppendFormat(",@Descricao = '{0}' ", Descricao);

                sql.AppendFormat(",@Dt_Cadastro= '{0}' ", Dt_Cadastro);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnExcluirRespostas(int Id_Resposta)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirResposta");

                sql.AppendFormat("@Id_Resposta = '{0}' ", Id_Resposta);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnExcluirRespostasPorIdPergunta(int Id_Pergunta)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirRespostaPorIdPergunta");

                sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable fnConsultarRespostaPorIdPerguta(Int32 Id_Pergunta)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarRespostasPorIdPergunta");

            sql.AppendFormat("@Id_Pergunta = '{0}' ", Id_Pergunta);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        #endregion
    }

}
