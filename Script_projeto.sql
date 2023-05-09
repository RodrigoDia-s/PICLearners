Create DataBase Projeto
Go
use Projeto


Create TABLE dbo.Clientes(
Id_Cliente int Not Null Identity(1,1),
Nome varchar(50) Not null,
Sexo varchar(10),
RM varchar(7),
CPF varchar(15),
Email varchar(50),
DataDeNascimento Date,


    Constraint Cliente_Id_pk Primary Key(Id_Cliente),
       
);


INSERT into dbo.Clientes values('Alexandre Vale','Masculino','3003175', ' ', ' ', ' '),
('Andre Iguezli Pedroso','Masculino','3003663', '', '', ''),
('Bruno Pessoa dos Reis','Masculino','3002837', '', '', ''),
('Bruna Luiza Alves Real','Feminino','3003175', '', '', ''),
('Kennedy Gabriel Cedro Barreto','Masculino','300158X', '', '', ''),
('Lucas Mattos Santiago','Masculino','3003281', '', '', '');

Select * from dbo.LoginWEB
Go
CREATE TABLE dbo.LoginWEB(
Id_Login Int Not Null Identity(1,1),
RM varchar(7) Unique Not Null,
Senha varchar(50) Not Null ,
Id_Cli int not null,
Constraint Id_Login_Cliente_Pk Primary Key Clustered (Id_Login) ,
Constraint Id_Cliente_FK Foreign Key(Id_Cli)
References dbo.Clientes(Id_Cliente));


Create Table dbo.Wiki(
Id_Wiki int not null Identity(1,1),
Id_Dono int not null,
Imagem varbinary(max),
Titulo Varchar(250),
Descricao text,
Resumo text,
Dt_Cadastro date,

	Constraint Id_Wiki_PK Primary Key (Id_Wiki),
        Constraint Wiki__Dono_Fk FOREIGN KEY (Id_Dono)
		 References dbo.Clientes(Id_Cliente)
);


Create Table dbo.Perguntas
(
Id_Pergunta int not null Identity(1,1),
Id_CliPer int,
Titulo text,
Descricao text,
Dt_Cadastro date,
	Constraint Id_Pergunta_PK Primary Key (Id_Pergunta),
	Constraint Id_CliPer_FK Foreign Key(Id_CliPer)
		References dbo.Clientes(Id_Cliente),
);
select * from dbo.Perguntas
Go
Create Table dbo.Respostas
(
Id_Resposta int not null Identity(1,1),
Id_CliRes int,
Id_Pergunta int,
Descricao text,
Dt_Cadastro date,
	Constraint Id_Resposta_PK Primary Key (Id_Resposta),
	Constraint Id_CliRes_FK Foreign Key(Id_CliRes)
		References dbo.Clientes(Id_Cliente),
	Constraint Id_Pergunta_FK Foreign Key(Id_Pergunta)
		References dbo.Perguntas(Id_Pergunta)
);


create table dbo.Conteudo(
Id_Cont int not null Identity(1,1),
Id_Cont_sharp int not null,
Id_Cont_script int not null,
Id_Cont_python int not null,
Id_Cont_c int not null,
Titulo varchar(250),
Descricao text,
Resumo text,
Dt_Cadastro date,
		Constraint Id_Cont_PK Primary Key (Id_Cont),
        Constraint Cont_sharp_Fk FOREIGN KEY (Id_Cont_sharp)
		 References dbo.sharp(Id_Cont_sharp),
		   Constraint Cont_script_Fk FOREIGN KEY (Id_Cont_script)
		 References dbo.script(Id_Cont_script),
		   Constraint Cont_python_Fk FOREIGN KEY (Id_Cont_python)
		 References dbo.python(Id_Cont_python),
		   Constraint Cont_c_Fk FOREIGN KEY (Id_Cont_c)
		 References dbo.c(Id_Cont_c)
);


create table dbo.sharp(
Id_Cont_sharp int not null Identity(1,1),
Imagem varbinary(max),
Descricao text,
		Constraint Id_Cont_sharp_PK Primary Key (Id_Cont_sharp),
       
		   
);

create table dbo.Perg_sharp(
	Id_perg_sharp int not null Identity(1,1),
	Id_Cont_Sharp int not null,
	Enunciado text,
	alt_err1 varchar(250), 
	alt_err2 varchar(250),
	alt_err3 varchar(250),
	alt_err4 varchar(250),
	alt_cert varchar(250),
		Constraint Id_perg_sharp_PK Primary Key (Id_perg_sharp),
		Constraint Cont__sharp_Fk FOREIGN KEY (Id_Cont_sharp)
		 References dbo.sharp(Id_Cont_sharp)
);


create table dbo.script(
Id_Cont_script int not null Identity(1,1),
Imagem varbinary(max),
Descricao text,
Dt_Cadastro date,
		Constraint Id_Cont_script_PK Primary Key (Id_Cont_script),
       
		   
);



create table dbo.Perg_script(
	Id_perg_script int not null Identity(1,1),
	Id_Cont_script int not null,
	Enunciado text,
	alt_err1 varchar(250), 
	alt_err2 varchar(250),
	alt_err3 varchar(250),
	alt_err4 varchar(250),
	alt_cert varchar(250),
		Constraint Id_perg_script_PK Primary Key (Id_perg_script),
		Constraint Cont__script_Fk FOREIGN KEY (Id_Cont_Script)
		 References dbo.script(Id_Cont_script)
);
drop table dbo.python;
create table dbo.python(
Id_Cont_python int not null Identity(1,1),
Imagem varbinary(max),
Descricao text,
Dt_Cadastro date,
		Constraint Id_Cont_python_PK Primary Key (Id_Cont_python)

		   
);
drop table dbo.Perg_python
create table dbo.Perg_python(
	Id_perg_python int not null Identity(1,1),
	Id_Cont_python int not null,
	Enunciado text,
	alt_err1 varchar(250), 
	alt_err2 varchar(250),
	alt_err3 varchar(250),
	alt_err4 varchar(250),
	alt_cert varchar(250),
		Constraint Id_perg_python_PK Primary Key (Id_perg_python),
		Constraint Cont__python_Fk FOREIGN KEY (Id_Cont_python)
		 References dbo.python(Id_Cont_python)
);

create table dbo.c(
Id_Cont_c int not null Identity(1,1),
Imagem varbinary(max),
Descricao text,
Dt_Cadastro date,
		Constraint Id_Cont_c_PK Primary Key (Id_Cont_c),
       
		   
);






drop table dbo.Perg_c;
create table dbo.Perg_c(
	Id_perg_c int not null Identity(1,1),
	Id_Cont_c int not null,
	Enunciado text,
	alt_err1 varchar(250), 
	alt_err2 varchar(250),
	alt_err3 varchar(250),
	alt_err4 varchar(250),
	alt_cert varchar(250),
		Constraint Id_perg_c_PK Primary Key (Id_perg_c),
		Constraint Cont__c_Fk FOREIGN KEY (Id_Cont_c)
		 References dbo.c(Id_Cont_c)
);


create table dbo.PontuacaoSharp(
	Id_Pont_sharp int not null Identity(1,1),
	Id_Cont_sharp int not null,
	Id_cli int not null,
	Pontuacao int,
	Constraint Id_Pont__sharp_PK Primary Key (Id_Pont_sharp),
		Constraint Cont___sharp_Fk FOREIGN KEY (Id_Cont_sharp)
		 References dbo.sharp(Id_Cont_sharp)
		 
);
create table dbo.PontuacaoScript(
	Id_Pont_script int not null Identity(1,1),
	Id_Cont_script int not null,
	Id_cli int not null,
	Pontuacao int,
	Constraint Id_Pont_script_PK Primary Key (Id_Pont_script),
		Constraint Cont___script_Fk FOREIGN KEY (Id_Cont_script)
		 References dbo.script(Id_Cont_script)
		 
);
create table dbo.PontuacaoPython(
	Id_Pont_python int not null Identity(1,1),
	Id_Cont_python int not null,
	Id_cli int not null,
	Pontuacao int,
	Constraint Id_Pont_python_PK Primary Key (Id_Pont_python),
		Constraint Cont___python_Fk FOREIGN KEY (Id_Cont_python)
		 References dbo.python(Id_Cont_python)
		 
);




create table dbo.PontuacaoC(
	Id_Pont_c int not null Identity(1,1),
	Id_Cont_c int not null,
	Id_cli int not null,
	Pontuacao int,
	Constraint Id_Pont_c_PK Primary Key (Id_Pont_c),
		Constraint Cont___c_Fk FOREIGN KEY (Id_Cont_c)
		 References dbo.c(Id_Cont_c),
		 
);




		 
		 

--Procs LoginWeb--
Go
Create procedure dbo.IncluirLoginWeb(@RM varchar(7),
									  @Senha varchar(50),
									  @Id_Cli int)
as
Begin;
set nocount on 
Insert into dbo.LoginWeb(RM, Senha, Id_Cli)
Values (@RM,@Senha, @Id_Cli);

set nocount off;
end;


Go
Create procedure dbo.AlterarLoginWeb (@RM varchar(15),
									  @Senha varchar(50))
as
Begin;
set nocount on 
Update dbo.LoginWeb
Set Senha = coalesce(@Senha, Senha)
Where RM= @RM;
set nocount off
end;

Go
Create procedure dbo.ExcluirLoginWeb (@IdLogin int)
as
Begin;
set nocount on 
DELETE dbo.LoginWeb  
WHERE Id_Login = @IdLogin;  
set nocount off;
end;
  
Go
Create procedure dbo.ConsultaLoginWebPorIdLogin(@IdLogin int)

as
Begin;
set nocount on 
Select RM,
	   Senha
	   From dbo.LoginWEB
	   Where Id_Login = @IdLogin
set nocount off
end;

Go
Create procedure dbo.ConsultaLoginWebPorRM(@RM varchar(7))

as
Begin;
set nocount on 
Select LoginWeb.RM,
	   Senha,
	   LoginWeb.Id_Cli 	   
	   From dbo.LoginWEB
	   LEFT Join Clientes 
	   On LoginWEB.Id_Cli = Clientes.Id_Cliente 
	   Where LoginWeb.RM = @RM
set nocount off
end;

Go
Create procedure dbo.ConsultaLoginWebPorRMeSenha(@RM varchar(7)
												  ,@Senha varchar(50))

as
Begin;
set nocount on 
Select *
	   From dbo.LoginWEB
	   Where RM = @RM
	   And Senha = @Senha 
set nocount off
end;



-------------------------------------------------------Procs Clientes-------------------------------------------------------------------------------------------------------------
Go
Create procedure dbo.IncluirClientes (@RM VARCHAR(7),
									  @CPF varchar(15),
									  @Nome varchar(200),
									  @Genero varchar(15) = '',
									  @Email varchar(50) = '',
									  @Dt_Nascimento date)
as
Begin;
set nocount on 
Insert into dbo.Clientes(RM , CPF, Nome, Sexo,  Email , DataDeNascimento)
Values (@RM , @CPF, @Nome, @Genero,@Email,  @Dt_Nascimento);

set nocount off;
end;

Go
Create procedure dbo.AlterarClientes (@Id_Cli int,
									  @RM varchar(50),
									  @CPF varchar(15),
									  @Nome varchar(200),
									  @Genero varchar(15),
									  @Email varchar(50),
									  @Dt_Nascimento date)
as
Begin;
set nocount on 
Update dbo.Clientes 
Set RM = coalesce(@RM, RM),
	CPF = coalesce(@CPF, CPF),
	Nome = coalesce(@Nome, Nome),
	Sexo = coalesce(@Genero, Sexo),
	Email = coalesce(@Email , Email),
	DataDeNascimento = coalesce(@Dt_Nascimento, DataDeNascimento)
Where Id_Cliente = @Id_Cli;
set nocount off
end;

Go
Create procedure dbo.ExcluirCliente (@IdCli int)
as
Begin;
set nocount on 
DELETE dbo.Clientes   
WHERE Id_Cliente = @IdCli;  
set nocount off;
end;

Go  
Create procedure dbo.ConsultaClientePorIdCli(@IdCli int)

as
Begin;
set nocount on 
Select * From dbo.Clientes 
	   Where Id_Cliente = @IdCli 
set nocount off
end;


Go  
Create procedure dbo.ConsultaClientePorRM(@RM varchar(7))

as
Begin;
set nocount on 
Select * From dbo.Clientes 
	   Where RM = @RM  
set nocount off
end;
Go  
Create procedure dbo.RetornaIdCli(@RM varchar(7))

as
Begin;
set nocount on 
Select Id_Cliente From dbo.Clientes 
	   Where RM = @RM  
set nocount off
end;


-------------------------------------Conteudo------------------------------------------------------------------

 

 
 Go
 Create Procedure dbo.IncluirPergScript( 
								@Id_Cont_script int,
								@Enunciado varchar(500),
								@alt_err1 varchar(250), 
								@alt_err2 varchar(250),
								@alt_err3 varchar(250),
								@alt_err4 varchar(250),
								@alt_cert varchar(250))
								

as
 Begin 
 set nocount on
Insert into dbo.Perg_script(Id_Cont_script ,Enunciado, alt_err1,  alt_err2, alt_err3, alt_err4, alt_cert) 
Values ( @Id_Cont_script,@Enunciado, @alt_err1, @alt_err2, @alt_err3, @alt_err4, @alt_cert );
 set nocount off;
 End;
 Go
 create Procedure dbo.UltimoId
 as
 Begin 
 set nocount on
	select * from dbo.Conteudo
where Id_Cont = (select max(Id_Cont) from dbo.Conteudo)
set nocount off;
 End;

 Go
 create Procedure dbo.UltimoIdsharp
 as
 Begin 
 set nocount on
	select * from dbo.sharp
where Id_Cont_sharp = (select max(Id_Cont_sharp) from dbo.sharp)
set nocount off;
 End;

 Go
 create Procedure dbo.UltimoIdJS
 as
 Begin 
 set nocount on
	select * from dbo.script
where Id_Cont_script = (select max(Id_Cont_script) from dbo.script)
set nocount off;
 End;


 Go
 create Procedure dbo.UltimoIdPython
 as
 Begin 
 set nocount on
	select * from dbo.python
where Id_Cont_python = (select max(Id_Cont_python) from dbo.python)
set nocount off;
 End;

 Go
 create Procedure dbo.UltimoIdC
 as
 Begin 
 set nocount on
	select * from dbo.c
where Id_Cont_c = (select max(Id_Cont_c) from dbo.c)
set nocount off;
 End;

 Go
 
 Create Procedure dbo.IncluirConteudoScript( 
								@Descricao text)
								

as
 Begin 
 set nocount on
Insert into dbo.script(  Descricao)
Values (    @Descricao);
 set nocount off;
 End;



 
 
 Go
Create Procedure dbo.IncluirPergPython( 
								@Id_Cont_python int,
								@Enunciado text,
								@alt_err1 varchar(250), 
								@alt_err2 varchar(250),
								@alt_err3 varchar(250),
								@alt_err4 varchar(250),
								@alt_cert varchar(250))
								

as
 Begin 
 set nocount on
Insert into dbo.Perg_python(Id_Cont_python ,Enunciado, alt_err1,  alt_err2, alt_err3, alt_err4, alt_cert)
Values ( @Id_Cont_python,@Enunciado, @alt_err1, @alt_err2, @alt_err3, @alt_err4, @alt_cert );
 set nocount off;
 End;



 Go
 Create Procedure dbo.IncluirConteudoPython( 
								
								@Descricao text
							)
								

as
 Begin 
 set nocount on
Insert into dbo.python( Descricao)
Values (   @Descricao);
set nocount off;
End;


Go
 Create Procedure dbo.IncluirPergC( 
								@Id_Cont_c int,
								@Enunciado text,
								@alt_err1 varchar(250), 
								@alt_err2 varchar(250),
								@alt_err3 varchar(250),
								@alt_err4 varchar(250),
								@alt_cert varchar(250))
								

as
 Begin 
 set nocount on
Insert into dbo.Perg_c(Id_Cont_c ,Enunciado, alt_err1,  alt_err2, alt_err3,  alt_cert, alt_err4)
Values ( @Id_Cont_c,@Enunciado, @alt_err1, @alt_err2, @alt_err3, @alt_cert , @alt_err4 );
 set nocount off;
 End;


Go
 Create Procedure dbo.IncluirConteudoC( 
							
								@Descricao text
								)
								

as
 Begin 
 set nocount on
Insert into dbo.c(  Descricao)
Values (   @Descricao);
 set nocount off;
 End;



 
 Go
 Create Procedure dbo.IncluirConteudoSharp( 
								
								
								@Descricao text
							)
								

as
 Begin 
 set nocount on
	Insert into dbo.sharp(  Descricao)
	Values (   @Descricao);
 set nocount off;
 End;
 Go
 Create Procedure dbo.IncluirConteudo( 
								@Id_Cont_sharp int,
								@Id_Cont_script int, 
								@Id_Cont_python int, 
								@Id_Cont_c int,
								@Descricao text,
								@Resumo text,
								@Dt_Cadastro date,
								@Titulo varchar(250))

as
 Begin 
 set nocount on
Insert into dbo.Conteudo( Id_Cont_sharp,Id_Cont_script,Id_Cont_python, Id_Cont_c, Descricao, Resumo, Dt_Cadastro, Titulo)
Values ( @Id_Cont_sharp,@Id_Cont_script, @Id_Cont_python, @Id_Cont_c, @Descricao, @Resumo, @Dt_Cadastro, @Titulo);
 set nocount off;
 End;

 Go
 Create Procedure dbo.IncluirPergSharp( 
								@Id_Cont_sharp int,
								@Enunciado text,
								@alt_err1 varchar(250), 
								@alt_err2 varchar(250),
								@alt_err3 varchar(250),
								@alt_err4 varchar(250),
								@alt_cert varchar(250))
								

as
 Begin 
 set nocount on
Insert into dbo.Perg_sharp(Id_Cont_Sharp, Enunciado, alt_err1,  alt_err2, alt_err3,alt_err4, alt_cert)
Values (@Id_Cont_sharp, @Enunciado, @alt_err1, @alt_err2, @alt_err3,@alt_err4, @alt_cert );
 set nocount off;
 End;

o
 Go
 Create Procedure dbo.ConsultarConteudo
						
as
 Begin 
 set nocount on
Select  * from dbo.Conteudo
Order by Dt_Cadastro Desc
 set nocount off;
 End;
 Go
 
 Create  Procedure dbo.ConsultarTop4Conteudo
 as
Begin;
set nocount on
Select TOP(3) * from dbo.Conteudo
Order by Dt_Cadastro desc
set nocount off
end;

 Go
 Create Procedure dbo.ConsultarConteudoPorId(@Id_Cont int)
								

as
 Begin 
 set nocount on
Select  * from dbo.Conteudo
Where Id_Cont= @Id_Cont
 set nocount off;
 End;

 Go
Create Procedure dbo.ConsultarSharpPorConteudo(@Id_Cont_Sharp int)
as
Begin;
set nocount on
Select * 
from dbo.sharp
 	Where Id_Cont_sharp = @Id_Cont_Sharp 
	set nocount off
	end;

Go
 Create Procedure dbo.ConsultarScriptPorConteudo(@Id_Cont_Script int)
as
Begin;
set nocount on
Select * 
from dbo.script
 	Where Id_Cont_script = @Id_Cont_Script
	set nocount off
	end;

	select * from dbo.sharp
Go
Create Procedure dbo.ConsultarPythonPorConteudo(@Id_Cont_python int)
as
Begin;
set nocount on
Select * 
from dbo.python
 	Where Id_Cont_python = @Id_Cont_python 
	set nocount off
	end;
Go
Create Procedure dbo.ConsultarCPorConteudo(@Id_Cont_C int)
as
Begin;
set nocount on
Select * 
from dbo.c
 	Where Id_Cont_c = @Id_Cont_C 
	set nocount off
	end;

Go 
Create Procedure dbo.ConsultarPerguntasPorSharp(@Id_cont_sharp int)
as 
begin;
set nocount on 
select * from dbo.Perg_sharp
	where Id_Cont_Sharp = @Id_cont_sharp
	set nocount off
	end;

	Go
	Create Procedure dbo.ConsultarPerguntasPorScript(@Id_cont_script int)
as 
begin;
set nocount on 
select * from dbo.Perg_script
	where Id_Cont_script = @Id_cont_script
	set nocount off
	end;

	Go
	Create Procedure dbo.ConsultarPerguntasPorPython(@Id_cont_python int)
as 
begin;
set nocount on 
select * from dbo.Perg_python
	where Id_Cont_python = @Id_cont_python
	set nocount off
	end;



	Go
	Create Procedure dbo.ConsultarPerguntasPorC(@Id_cont_C int)
as 
begin;
set nocount on 
select * from dbo.Perg_c
	where Id_Cont_c = @Id_cont_C;
	set nocount off
	end;


	Go
	Create Procedure dbo.ConsultarPontSharpIdCli(@Id_cli int)
as 
begin;
set nocount on 
select * from dbo.PontuacaoSharp
	where Id_cli = @Id_cli;
	set nocount off
	end;

	Go
	Create Procedure dbo.ConsultarPontScriptIdCli(@Id_cli int)
as 
begin;
set nocount on 
select * from dbo.PontuacaoScript
	where Id_cli = @Id_cli;
	set nocount off
	end;



	Go
	Create Procedure dbo.ConsultarPontPythonIdCli(@Id_cli int)
as 
begin;
set nocount on 
select * from dbo.PontuacaoPython
	where Id_cli = @Id_cli;
	set nocount off
	end;



	Go
	Create Procedure dbo.ConsultarPontCIdCli(@Id_cli int)
as 
begin;
set nocount on 
select * from dbo.PontuacaoC
	where Id_cli = @Id_cli;
	set nocount off
	end;


	Go
	Create Procedure dbo.ConsultarContPorSharp(@Id_Cont_sharp int)
	as 
	begin;
	set nocount on 
	select * from dbo.Conteudo
		where Id_Cont_sharp = @Id_Cont_sharp;
		set nocount off
	end;


	Go
	Create Procedure dbo.ConsultarContPorSript(@Id_Cont_script int)
	as 
	begin;
	set nocount on 
	select * from dbo.Conteudo
		where Id_Cont_script = @Id_Cont_script;
		set nocount off
	end;


	Go
	Create Procedure dbo.ConsultarContPorPython(@Id_Cont_Python int)
	as 
	begin;
	set nocount on 
	select * from dbo.Conteudo
		where Id_Cont_python = @Id_Cont_Python;
		set nocount off
	end;



	Go
	Create Procedure dbo.ConsultarContPorC(@Id_Cont_c int)
	as 
	begin;
	set nocount on 
	select * from dbo.Conteudo
		where Id_Cont_c = @Id_Cont_c;
		set nocount off
	end;

	Create Procedure dbo.ConsultarPontTituloSharp(@Id_cli int, @Id_Cont_sharp int)
as
Begin;
set nocount on
Select PontuacaoSharp.Pontuacao,
       Conteudo.Titulo
from dbo.PontuacaoSharp
 	Inner Join dbo.Conteudo
	On PontuacaoSharp.Id_cli = @Id_cli
	Where Conteudo.Id_Cont_sharp = @Id_Cont_sharp
	set nocount off
	end;

	Go
	Create Procedure dbo.ConsultarPontTituloSript(@Id_cli int, @Id_Cont_script int)
as
Begin;
set nocount on
Select PontuacaoScript.Pontuacao,
       Conteudo.Titulo
from dbo.PontuacaoScript
 	Inner Join dbo.Conteudo
	On PontuacaoScript.Id_cli = @Id_cli
	Where Conteudo.Id_Cont_script = @Id_Cont_script
	set nocount off
	end;

	
	Go
	Create Procedure dbo.ConsultarPontTituloPython(@Id_cli int, @Id_Cont_python int)
as
Begin;
set nocount on
Select PontuacaoPython.Pontuacao,
       Conteudo.Titulo
from dbo.PontuacaoPython
 	Inner Join dbo.Conteudo
	On PontuacaoPython.Id_cli = @Id_cli
	Where Conteudo.Id_Cont_python = @Id_Cont_python
	set nocount off
	end;

	select * from dbo.PontuacaoSharp
	Go
	Create Procedure dbo.ConsultarPontTituloC(@Id_cli int, @Id_Cont_c int)
as
Begin;
set nocount on
Select PontuacaoC.Pontuacao,
       Conteudo.Titulo
from dbo.PontuacaoC
 	Inner Join dbo.Conteudo
	On PontuacaoC.Id_cli = @Id_cli
	Where Conteudo.Id_Cont_c = @Id_Cont_c
	set nocount off
	end;

	Go
	Create Procedure dbo.IncluirPontuacaoSharp( @Id_Cont_Sharp int,
											@Id_cli int,
											@Pontuacao int)
as
 Begin 
 set nocount on
Insert into dbo.PontuacaoSharp( Id_Cont_sharp, Id_cli, Pontuacao)
Values ( @Id_Cont_Sharp, @Id_cli, @Pontuacao);
 set nocount off;
 End;


 select * from dbo.Conteudo;

 Go
	Create Procedure dbo.IncluirPontuacaoScript( @Id_Cont_Script int,
											@Id_cli int,
											@Pontuacao int)
as
 Begin 
 set nocount on
Insert into dbo.PontuacaoScript( Id_Cont_script, Id_cli, Pontuacao)
Values ( @Id_Cont_Script, @Id_cli, @Pontuacao);
 set nocount off;
 End;

 Go
	Create Procedure dbo.IncluirPontuacaoPython( @Id_Cont_Python int,
											@Id_cli int,
											@Pontuacao int)
as
 Begin 
 set nocount on
Insert into dbo.PontuacaoPython( Id_Cont_python, Id_cli, Pontuacao)
Values ( @Id_Cont_Python, @Id_cli, @Pontuacao);
 set nocount off;
 End;


 Go
	Create Procedure dbo.IncluirPontuacaoC( @Id_Cont_C int,
											@Id_cli int,
											@Pontuacao int)
as
 Begin 
 set nocount on
Insert into dbo.PontuacaoC( Id_Cont_c, Id_cli, Pontuacao)
Values ( @Id_Cont_C, @Id_cli, @Pontuacao);
 set nocount off;
 End;

  

 
 
-------------------------------------wiki------------------------------------------------------------------
Go 
 Create Procedure dbo.IncluirWiki(
									@Id_Dono int,
									@Imagem varbinary(max),
									  @Descricao text,
									  @Resumo text,
									  @Dt_Cadastro date,
									  @Titulo varchar(250))
 as
 Begin 
 set nocount on
Insert into dbo.Wiki( Id_Dono, Imagem, Descricao, Resumo, Dt_Cadastro, Titulo)
Values ( @Id_Dono,@Imagem, @Descricao, @Resumo,@Dt_Cadastro, @Titulo);
 set nocount off;
 End;

 Go
Create procedure dbo.ExcluirWiki(@Id_Wiki int)
as
Begin;
set nocount on 
DELETE dbo.Wiki   
WHERE Id_Wiki = @Id_Wiki;  
set nocount off;
end;




delete from dbo.Wiki;


Go
Create procedure dbo.AlterarWiki(@Id_Wiki int,
								@Id_Dono int,
									  @Imagem varbinary(max),
									  @Descricao text,
									  @Resumo text,
									  @Dt_Cadastro date,
									  @Titulo varchar(250))
as
Begin;
set nocount on 
Update dbo.Wiki
Set	Descricao = coalesce(@Descricao, Descricao),
	Dt_Cadastro = coalesce(@Dt_Cadastro, Dt_Cadastro),
	Imagem = coalesce(@Imagem, Imagem),
	Titulo = coalesce(@Titulo, Titulo),
	Resumo = coalesce(@Resumo, Resumo)
	Where Id_Wiki = @Id_Wiki;
set nocount off
end;

Go
Create procedure dbo.ConsultarTop4Wiki
as
Begin;
set nocount on
Select TOP(4) * from dbo.Wiki
Order by Id_Wiki desc
set nocount off
end;

Go
Create procedure dbo.ConsultarWiki 
as
Begin;
set nocount on
Select  * from dbo.Wiki
Order by Id_Wiki desc
set nocount off
end;

select * from dbo.Perguntas;

Go
Create procedure dbo.ConsultarWikiPorIdWiki(@Id_Wiki int) 
as
Begin;
set nocount on
Select  * from dbo.Wiki
Where Id_Wiki= @Id_Wiki
set nocount off
end;

delete  from dbo.Wiki

Create procedure dbo.ConsultarWikiPorIdDono(@Id_Dono int) 
as
Begin;
set nocount on
Select  * from dbo.Wiki
Where Id_Dono= @Id_Dono
set nocount off
end;



Go
Create procedure dbo.ConsultarTop10Wiki
as
Begin;
set nocount on
Select TOP(10) * from dbo.Wiki
Order by Id_Wiki desc
set nocount off
end;

 --------------------------------------------Perguntas e Respostas--------------------------------------------------------------------------------------------------------------
  Go 
 Create Procedure dbo.IncluirPerguntas(@Id_CliPer int,
									   @Titulo text,
									   @Descricao text,
									   @Dt_Cadastro Date)
 as
 Begin 
 set nocount on
Insert into dbo.Perguntas(Id_CliPer, Titulo, Descricao, Dt_Cadastro)
Values (@Id_CliPer, @Titulo, @Descricao, @Dt_Cadastro);
 set nocount off;
 End;

 Go
Create procedure dbo.ExcluirPerguntas (@Id_Pergunta int)
as
Begin;
set nocount on 
DELETE dbo.Perguntas   
WHERE Id_Pergunta = @Id_Pergunta;  
set nocount off;
end;

Go
Create procedure dbo.AlterarPerguntas (@Id_Pergunta int,
									   @Id_CliPer int,
									   @Titulo text,
									   @Descricao text,
									   @Dt_Cadastro Date)
as
Begin;
set nocount on 
Update dbo.Perguntas 
Set Id_CliPer = coalesce(@Id_CliPer, Id_CliPer),
	Titulo = coalesce(@Titulo, Titulo),
	Descricao = coalesce(@Descricao, Descricao),
	Dt_Cadastro = coalesce(@Dt_Cadastro, Dt_Cadastro)
	Where Id_Pergunta = @Id_Pergunta;
set nocount off
end;

  Go 
 Create Procedure dbo.IncluirResposta(@Id_CliRes int,
									  @Id_Pergunta int,
									  @Descricao text,
									  @Dt_Cadastro date)
 as
 Begin 
 set nocount on
Insert into dbo.Respostas(Id_CliRes, Id_Pergunta, Descricao,Dt_Cadastro)
Values (@Id_CliRes, @Id_Pergunta, @Descricao, @Dt_Cadastro);
 set nocount off;
 End;

 Go
Create procedure dbo.ExcluirResposta (@Id_Resposta int)
as
Begin;
set nocount on 
DELETE dbo.Respostas   
WHERE Id_Resposta = @Id_Resposta;  
set nocount off;
end;


Create procedure dbo.ExcluirRespostaPorIdPergunta (@Id_Pergunta int)
as
Begin;
set nocount on 
DELETE dbo.Respostas   
WHERE Id_Pergunta = @Id_Pergunta;  
set nocount off;
end;

Go
Create procedure dbo.AlterarResposta (@Id_Resposta int,
									  @Descricao text,
									  @Dt_Cadastro date)
as
Begin;
set nocount on 
Update dbo.Respostas 
Set	Descricao = coalesce(@Descricao, Descricao),
	Dt_Cadastro = coalesce(@Dt_Cadastro, Dt_Cadastro)
	Where Id_Resposta = @Id_Resposta;
set nocount off
end;
 
Go 
Create Procedure dbo.ConsultarUltimasPerguntas
as
Begin;
set nocount on
Select Top(5) * from dbo.Perguntas
Order by Id_Pergunta desc
set nocount off
end;


Go 
Create Procedure dbo.ConsultarTop3Perguntas
as
Begin;
set nocount on
Select Top(3) * from dbo.Perguntas
Order by Id_Pergunta desc
set nocount off
end;
Go
Create Procedure dbo.ConsultarPerguntas
as
Begin;
set nocount on
Select * from dbo.Perguntas
Order by Id_Pergunta desc
set nocount off
end;




Create Procedure dbo.ConsultarPerguntaPorId(@Id_Pergunta int)
as
Begin;
set nocount on
Select Perguntas.Id_CliPer,
       Perguntas.Titulo,
	   Perguntas.Descricao,
	   Perguntas.Dt_Cadastro,
	   Clientes.Id_Cliente,
	   Clientes.Nome
from dbo.Perguntas
 	Inner Join dbo.Clientes
	On Perguntas.Id_CliPer = Clientes.Id_Cliente
	Where Perguntas.Id_Pergunta = @Id_Pergunta 
	set nocount off
	end;



Create Procedure dbo.ConsultarRespostaPorId(@Id_Resposta int)
as
Begin;
set nocount on
Select	Respostas.Id_Pergunta,
       Respostas.Id_CliRes,
	   Respostas.Descricao,
	   Respostas.Dt_Cadastro,
	   Perguntas.Id_Pergunta,
	   Perguntas.Titulo,
	   Clientes.Id_Cliente,
	   Clientes.Nome
from dbo.Respostas
	Inner join dbo.Perguntas
	On Respostas.Id_Pergunta
	= Perguntas.Id_Pergunta 
 	Inner Join dbo.Clientes
	On Perguntas.Id_CliPer = Clientes.Id_Cliente
	Where Respostas.Id_Resposta = @Id_Resposta 
	set nocount off
	end;
	
Go
Create Procedure dbo.ConsultarPerguntaPorCliente(@Id_Cliente int)
as
Begin;
set nocount on
Select Perguntas.Id_Pergunta,
	   Perguntas.Titulo,
	   Perguntas.Descricao,
	   Perguntas.Dt_Cadastro
from dbo.Perguntas
	Where Perguntas.Id_CliPer = @Id_Cliente
	set nocount off
	end;

Create Procedure dbo.ConsultarRespostaPorCliente(@Id_Cliente int)
as
Begin;
set nocount on
Select Respostas.Id_Resposta,
	   Respostas.Descricao,
	   Respostas.Dt_Cadastro
from dbo.Respostas
	Where Respostas.Id_CliRes = @Id_Cliente
	set nocount off
	end;

Go
Create Procedure dbo.ConsultarRespostasPorIdPergunta(@Id_Pergunta int)
as
Begin;
set nocount on
Select Respostas.Id_CliRes,
	   Respostas.Descricao,
	   Respostas.Dt_Cadastro,
	   Clientes.Id_Cliente,
	   Clientes.Nome
	   from dbo.Respostas
	   Inner Join dbo.Clientes
	   On Respostas.Id_CliRes = Clientes.Id_Cliente
	   Where Respostas.Id_Pergunta = @Id_Pergunta
	   set nocount off
	   end;


	  
