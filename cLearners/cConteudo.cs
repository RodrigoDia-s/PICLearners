using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cLearners
{
    public class cConteudo
    {
        private SqlConnection Conexao;
        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public cConteudo(string connectionString)
        {
            ConnectionString = connectionString;
        }

        cLearners.cGeral o = new cLearners.cGeral();

        private static string SQL;
        DataTable dt;



        public DataTable fnConsultarUltimoId()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.UltimoId");
          

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }



        public DataTable fnConsultarUltimoIdSharp()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.UltimoIdSharp");


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }


        public DataTable fnConsultarUltimoIdScript()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.UltimoIdJS");


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarTop4Conteudo()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarTop4Conteudo");


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarUltimoIdPython()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.UltimoIdPython");


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarUltimoIdC()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.UltimoIdC");


            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public void fnIncluirConteudo(int Id_Cont_sharp,int Id_Cont_string, int Id_Cont_python, int Id_Cont_c, string Descricao,  string Resumo, DateTime Dt_Cadastro, string Titulo   )
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirConteudo");

                sql.AppendFormat("@Id_Cont_sharp = '{0}' ",Id_Cont_sharp );

                sql.AppendFormat(",@Id_Cont_script = '{0}' ", Id_Cont_string);

                sql.AppendFormat(",@Id_Cont_python = '{0}' ", Id_Cont_python);

                sql.AppendFormat(",@Id_Cont_c = '{0}' ", Id_Cont_c);
              

                sql.AppendFormat(",@Descricao = '{0}' ", Descricao);

                sql.AppendFormat(",@Resumo = '{0}' ", Resumo);

                sql.AppendFormat(",@Dt_Cadastro= '{0}' ", Dt_Cadastro);
                sql.AppendFormat(",@Titulo = '{0}' ", Titulo);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void fnIncluirContSharp( string Descricao )
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirConteudoSharp");

            

                sql.AppendFormat("@Descricao = '{0}' ", Descricao);

                

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnIncluirContScript( string Descricao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirConteudoScript");

              

                sql.AppendFormat("@Descricao = '{0}' ", Descricao);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void fnIncluirContPython( string Descricao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirConteudoPython");

             

                sql.AppendFormat("@Descricao = '{0}' ", Descricao);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void fnIncluirContC( string Descricao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirConteudoC");

            

                sql.AppendFormat("@Descricao = '{0}' ", Descricao);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnIncluirPergSharp( int Id_Cont_Sharp, string Enunciado,string alt_err1,  string alt_err2,string alt_err3, string alt_err4, string alt_cert)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPergSharp");

                sql.AppendFormat("@Id_Cont_sharp = '{0}' ", Id_Cont_Sharp);

                sql.AppendFormat(",@Enunciado = '{0}' ", Enunciado);
                sql.AppendFormat(",@alt_err1 = '{0}' ", alt_err1);
                sql.AppendFormat(",@alt_err2 = '{0}' ", alt_err2);
                sql.AppendFormat(",@alt_err3 = '{0}' ", alt_err3);
                sql.AppendFormat(",@alt_err4 = '{0}' ", alt_err4);
                sql.AppendFormat(",@alt_cert= '{0}' ", alt_cert);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnIncluirPergScript(int Id_Cont_Script, string Enunciado, string alt_err1, string alt_err2, string alt_err3, string alt_err4, string alt_cert)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPergScript");

                sql.AppendFormat("@Id_Cont_script = '{0}' ", Id_Cont_Script);

                sql.AppendFormat(",@Enunciado = '{0}' ", Enunciado);
                sql.AppendFormat(",@alt_err1 = '{0}' ", alt_err1);
                sql.AppendFormat(",@alt_err2 = '{0}' ", alt_err2);
                sql.AppendFormat(",@alt_err3 = '{0}' ", alt_err3);
                sql.AppendFormat(",@alt_err4 = '{0}' ", alt_err4);
                sql.AppendFormat(",@alt_cert= '{0}' ", alt_cert);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnIncluirPergPython(int Id_Cont_Python, string Enunciado, string alt_err1, string alt_err2, string alt_err3, string alt_err4, string alt_cert)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPergPython");

                sql.AppendFormat("@Id_Cont_python = '{0}' ", Id_Cont_Python);

                sql.AppendFormat(",@Enunciado = '{0}' ", Enunciado);
                sql.AppendFormat(",@alt_err1 = '{0}' ", alt_err1);
                sql.AppendFormat(",@alt_err2 = '{0}' ", alt_err2);
                sql.AppendFormat(",@alt_err3 = '{0}' ", alt_err3);
                sql.AppendFormat(",@alt_err4 = '{0}' ", alt_err4);
                sql.AppendFormat(",@alt_cert= '{0}' ", alt_cert);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void fnIncluirPergC(int Id_Cont_C, string Enunciado, string alt_err1, string alt_err2, string alt_err3, string alt_err4, string alt_cert)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPergC");

                sql.AppendFormat("@Id_Cont_c = '{0}' ", Id_Cont_C);

                sql.AppendFormat(",@Enunciado = '{0}' ", Enunciado);
                sql.AppendFormat(",@alt_err1 = '{0}' ", alt_err1);
                sql.AppendFormat(",@alt_err2 = '{0}' ", alt_err2);
                sql.AppendFormat(",@alt_err3 = '{0}' ", alt_err3);
                sql.AppendFormat(",@alt_err4 = '{0}' ", alt_err4);
                sql.AppendFormat(",@alt_cert= '{0}' ", alt_cert);



                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnIncluirPontuacaoSharp(int Id_Cont_sharp, int Id_cli, int Pontuacao )
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPontuacaoSharp");

                sql.AppendFormat("@Id_Cont_sharp = '{0}' ", Id_Cont_sharp);
                sql.AppendFormat(", @Id_cli = '{0}' ", Id_cli);
                sql.AppendFormat(", @Pontuacao = '{0}' ", Pontuacao);


                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnIncluirPontuacaoScript(int Id_Cont_script, int Id_cli, int Pontuacao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPontuacaoScript");

                sql.AppendFormat("@Id_Cont_script = '{0}' ", Id_Cont_script);
                sql.AppendFormat(", @Id_cli = '{0}' ", Id_cli);
                sql.AppendFormat(", @Pontuacao = '{0}' ", Pontuacao);


                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void fnIncluirPontuacaoPython(int Id_Cont_python, int Id_cli, int Pontuacao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPontuacaoPython");

                sql.AppendFormat("@Id_Cont_python = '{0}' ", Id_Cont_python);
                sql.AppendFormat(", @Id_cli = '{0}' ", Id_cli);
                sql.AppendFormat(", @Pontuacao = '{0}' ", Pontuacao);


                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnIncluirPontuacaoC(int Id_Cont_c, int Id_cli, int Pontuacao)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.IncluirPontuacaoC");

                sql.AppendFormat("@Id_Cont_c = '{0}' ", Id_Cont_c);
                sql.AppendFormat(", @Id_cli = '{0}' ", Id_cli);
                sql.AppendFormat(", @Pontuacao = '{0}' ", Pontuacao);


                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void fnExcluirNoticia(int Id_Noticia)
        {
            try
            {

                StringBuilder sql = new StringBuilder();

                sql.AppendLine("Exec dbo.ExcluirNoticias");

                sql.AppendFormat("@Id_Noticia = '{0}' ", Id_Noticia);

                SQL = sql.ToString();

                o.ExecutarComando(SQL, ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable fnConsultarConteudoPorId(int Id_Cont)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarConteudoPorId");
            sql.AppendFormat("@Id_Cont = '{0}' ", Id_Cont);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }

        public DataTable fnConsultarSharpPorConteudo(int Id_Cont_sharp)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarSharpPorConteudo");
            sql.AppendFormat("@Id_Cont_sharp = '{0}' ", Id_Cont_sharp);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }



        public DataTable fnConsultarScriptPorConteudo(int Id_Cont_script)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarScriptPorConteudo");
            sql.AppendFormat("@Id_Cont_script = '{0}' ", Id_Cont_script);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }



        public DataTable fnConsultarPythonPorConteudo(int Id_Cont_python)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPythonPorConteudo");
            sql.AppendFormat("@Id_Cont_python = '{0}' ", Id_Cont_python);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }



        public DataTable fnConsultarCPorConteudo(int Id_Cont_c)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarCporConteudo");
            sql.AppendFormat("@Id_Cont_c = '{0}' ", Id_Cont_c);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }


        public DataTable fnConsultarConteudo()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarConteudo");
            
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }


        public DataTable fnConsultarPerguntasPorSharp(int Id_Cont_sharp)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntasPorSharp");
            sql.AppendFormat("@Id_Cont_sharp = '{0}' ", Id_Cont_sharp);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPerguntasPorScript(int Id_Cont_script)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntasPorScript");
            sql.AppendFormat("@Id_Cont_script = '{0}' ", Id_Cont_script);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPerguntasPorPython(int Id_Cont_python)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntasPorPython");
            sql.AppendFormat("@Id_Cont_python = '{0}' ", Id_Cont_python);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPerguntasPorC(int Id_Cont_c)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPerguntasPorC");
            sql.AppendFormat("@Id_Cont_c = '{0}' ", Id_Cont_c);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarTop4Noticias()
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarTop4Noticias");

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontSharpIdCli(int Id_cli)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontSharpIdCli");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontScriptIdCli(int Id_cli)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontScriptIdCli");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontPythonIdCli(int Id_cli)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontPythonIdCli");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontCIdCli(int Id_cli)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontCIdCli");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontTituloSharp(int Id_cli, int Id_Cont_Sharp)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontTituloSharp");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);
            sql.AppendFormat(", @Id_Cont_sharp = '{0}' ", Id_Cont_Sharp);
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontTituloScript(int Id_cli, int Id_Cont_Script)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontTituloSript");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);
            sql.AppendFormat(", @Id_Cont_script = '{0}' ", Id_Cont_Script);
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontTituloPython(int Id_cli, int Id_Cont_Python)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontTituloPython");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);
            sql.AppendFormat(", @Id_Cont_python = '{0}' ", Id_Cont_Python);
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarPontTituloC(int Id_cli, int Id_Cont_C)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarPontTituloC");

            sql.AppendFormat("@Id_cli = '{0}' ", Id_cli);
            sql.AppendFormat(", @Id_Cont_c = '{0}' ", Id_Cont_C);
            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarContPorSharp(int Id_Cont_sharp)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarContPorSharp");

            sql.AppendFormat("@Id_Cont_sharp = '{0}' ", Id_Cont_sharp);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarContPorScript(int Id_Cont_script)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarContPorSript");

            sql.AppendFormat("@Id_Cont_sript = '{0}' ", Id_Cont_script);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarContPorPython(int Id_Cont_python)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarContPorPython");

            sql.AppendFormat("@Id_Cont_python = '{0}' ", Id_Cont_python);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
        public DataTable fnConsultarContPorC(int Id_Cont_C)
        {
            StringBuilder sql = new StringBuilder();

            sql.AppendLine("Exec dbo.ConsultarContPorC");

            sql.AppendFormat("@Id_Cont_c = '{0}' ", Id_Cont_C);

            SQL = sql.ToString();
            dt = o.RetornarDataTable(SQL, ConnectionString);
            return dt;
        }
    }
}
