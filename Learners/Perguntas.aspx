<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perguntas.aspx.cs" Inherits="Learners.Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-lg-12">
                    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                         <strong><h1 style="font-family: sans-serif; font-weight:100;">Perguntas</h1></strong>
                     </div>

                             <div id="button-perg" >
                                <asp:Button ID="lnkCadPergunta" runat="server" CssClass="btn btn-destaque" OnClick="lnkCadPergunta_Click" Text="Registrar Pergunta"></asp:Button>
                             </div>
                            <asp:Repeater ID="RepeaterPerguntas" OnItemCommand="RepeaterPerguntas_ItemCommand" runat="server">
                                <ItemTemplate>
                                    <div class="row" id="box-perguntas">
                                    <div class="col-lg-12 ">
                                    <div class="row-fluid">
                                    <h2  >
                                      <asp:Label ID="lblDescricao" runat="server" Width="100%" Text= '<%#Eval("Titulo")%>'>
                                                                       </asp:Label><div id="linha"></div></h2>
                                        
                                        <div class="col-lg-20 " style="position:relative; float:right;">
                                           
                                            <asp:Button ID="lnkVisualizar" runat="server" CssClass="btn btn-destaque" CommandArgument='<%# Eval("Id_Pergunta") %>' CommandName="pergunta"  Text="Visualizar"/>
                                           
                                    </div>
                                    </div>
                                    </div>
                                      </div>
                                    </ItemTemplate>
                                    

                            </asp:Repeater>
                    <div class="col-lg-12" id="Bt_Voltar">
                            <input  type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
                 </div>
            </div>
    </div>
    <style>
        #Bt_Voltar input[type = "button"]{
             border: 0;
            background: none;
            display: block;
            margin: 30px auto;
            text-align: center;
            border: 2px solid red;
            padding: 14px 40px;
            width: 200px;
            outline: none;
            color: red;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }
        #Bt_Voltar input[type = "button"]:hover{
             background: red;
             color:white;
        }
        #box-perguntas{
            color: white;
            width: auto;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-bottom-left-radius: 45px;
            border-top-right-radius: 45px;
            border-top-left-radius: 45px;
            padding: 0px;
            position: relative;
            left: 50%;
            transform: translate(-50%, 5%);
            background: black;
            font-family: sans-serif;
            margin-bottom:2px;
            font-weight: 100;
        }
        #box-perguntas h1{
            color: white;
            text-transform: uppercase;
            font-weight: 500;
        }
        #box-perguntas h2{
           
            position:relative;
            transform: translate(10%, 200%);
            font-weight: 100;
            font-size: medium;
            
            
        }
        #linha{
           position:relative;
           margin-top: 5px;
           width: 50%;
           background-color: white;
           opacity: 0.4;
           height: 0.8px;
           border-bottom: solid;
           border-bottom-color: white;
        }
        #box-perguntas input[type = "text"], .box input[type = "password"]{
            border: 0;
            background: none;
            display:block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid white;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
        }

        #box-perguntas input[type = "text"]:focus, .box input[type = "password"]:focus {
             width: 400px;
            border-color: rgb(23,122,101);
        
        }


        #box-perguntas input[type = "submit"] {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid rgb(23,122,101);
            padding: 14px 40px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }


        #box-perguntas input[type = "submit"]:hover {
            background: rgb(23,122,101);
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
</asp:Content>
