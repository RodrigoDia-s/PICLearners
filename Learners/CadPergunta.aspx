<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="CadPergunta.aspx.cs" Inherits="Learners.CadPergunta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container" style="margin-top:2%">
    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <strong><h1 style="font-family: sans-serif; font-weight: 300;">Cadastro de Perguntas</h1></strong>
     </div>
    <hr />
    <div class="col-lg-12" id="box-perguntas">
    <label>Titulo:</label>
    <asp:TextBox ID="txtTitulo" runat="server" Width="100%"></asp:TextBox>
        </div>
    <div class="col-lg-12">
    <label>Descrição:</label>
    <asp:TextBox ID="txtDescricao" TextMode="MultiLine" runat="server"></asp:TextBox>
    </div>
    <div id="button-perg" >
        <asp:Button ID="lnkRegistrar" runat="server" CssClass="btn btn-destaque" OnClick="lnkRegistrar_Click" Text ="Registrar Pergunta"></asp:Button>
         </div>       
        <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
    
</div>
    <style>
         #box-perguntas input[type = "text"], .box input[type = "password"]{
            border: 0;
            background: none;
            display:block;
            text-align: center;
            border: 2px solid black;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: black;
            border-radius: 24px;
            transition: 0.25s;
            margin-bottom: 2px;
        }

        #box-perguntas input[type = "text"]:focus, .box input[type = "password"]:focus {
             width: 400px;
            border-color: rgb(23,122,101);
        
        }
        #button-perg{

        }
       
        #button-perg input[type = "submit"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid rgb(23,122,101);
            padding: 14px 40px;
            width: 200px;
            outline: none;
            color: rgb(23,122,101);
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }
         #button-perg input[type = "submit"]:hover{
             background: rgb(23,122,101);
             color:white;
         }
    </style>
    <script>
            CKEDITOR.replace("<% =txtDescricao.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );

            
		</script>
</asp:Content>
