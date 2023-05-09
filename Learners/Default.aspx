<%@ Page Title="Learners" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Learners._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"  >

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/carousel.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

  <ol class="carousel-indicators" style="margin:auto;">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>


       
  <div class="carousel-inner">
            <div class="carousel-item active" style="width:1350px;height:450px;background-color:white;">
                  <a  style="text-decoration:none; color: white;" href="SobreNos.aspx"> 
                <img style="width:100%;height:100%;position:unset" src="img/Banner_learners.png" />
                      </a>
                <div class="carousel-caption d-none d-md-block">
                  
                 
                </div>
            </div>

      

   
        <div class="carousel-item" style="width:1350px;height:450px" ">
             <a  style="text-decoration:none; color: white;"href="CadConta.aspx">
            <img class="d-block w-100 " style="width:50%;height:100%; position:unset" src="img/IFSP_Salto.jpg" alt="Second slide" />

        </a>
        <div class="carousel-caption d-none d-md-block">
            <a  href="CadConta.aspx" style="text-decoration:none; color: white;"> <h1 style="font-family: sans-serif; font-weight:500;text-shadow: #000 3px 5px 3px" >ALUNO IFSP FAÇA SEU CADASTRO</h1>  </a>
    
         </div>


        </div>
     

   
        <div class="carousel-item" style="width:1350px;height:450px">
              <a  href="Comunidade.aspx"> <img class="d-block w-100"  style="width:50%;height:100%; position:unset" src="img/Comu_question.jpg" alt="Third slide">
                 </a>
         <div class="carousel-caption d-none d-md-block">
              <a  href="Comunidade.aspx " style="text-decoration:none; color: white;"><h1 style="font-family: sans-serif; font-weight:500; text-shadow: #000 3px 5px 3px" >PERGUNTAS E RESPOSTAS</h1>  </a>
    
        </div>
        
        </div>
   

      
        <div class="carousel-item" style="width:1350px;height:450px" ">
           <a  href="Wiki.aspx"><img class="d-block w-100 " style="width:50%;height:100%; position:unset" src="img/wiki.jpg" alt="Fourth slide" />
                    </a>
        
         <div class="carousel-caption d-none d-md-block">
            <a  href="Wiki.aspx" style="text-decoration:none; color: white;"> <h1 style="font-family: sans-serif; font-weight: 500; text-shadow: #000 3px 5px 3px;">CONHEÇA NOSSO WIKI</h1>  </a>
    
         </div>


         </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <br />
    <div class="container">
    <h1 style="font-family:sans-serif; font-weight:100;">Conteudos:</h1>
            <div id="box-design-default">
            <asp:Repeater ID="RptNoticias" runat="server" OnItemCommand="RptNoticias_ItemCommand" OnItemDataBound="RptNoticias_ItemDataBound">
             
            <ItemTemplate>
                <div   id="box-default">
                                   
                                     
                                            
                                             <h1><asp:Label ID="lblTitulo" runat="server" Text= '<%#Eval("Titulo")%>'>
                                                   </asp:Label></h1>
                                             
                                          
                                     
                                      
                                            <div class="data-public" id ="dt_pun" >
                                                <asp:Label ID="lblData" runat="server" Text='<%#"Data de Publicação: " + DateTime.Parse(Eval("Dt_Cadastro").ToString()).ToString("dd/MM/yyy")%>'></asp:Label>
                                          
                                        </div>
                                        <div class="row-fluid" style="padding-left:0px;">
                                            <div style="margin-left:2px;">
                                               <p id="resumo4"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                                                   
                                
                                            </div>
                                        <asp:Button ID="lnkNoticia" runat="server"  CommandName="conteudo"  CommandArgument='<%# Eval("Id_Cont") %>' CssClass="btn btn-destaque " Text="Ver Mais">  </asp:Button>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
            <AlternatingItemTemplate>
                              <div  id="box2-default">
                                  
                                     
                                            
                                             <h1><asp:Label ID="lblTitulo" runat="server" Text= '<%#Eval("Titulo")%>'>
                                                   </asp:Label></h1>
                                             
                                       
                                            <div class="data-public" id ="dt_pun" style="margin-left:2px;">
                                                <asp:Label ID="lblData" runat="server" Text='<%#"Data de Publicação: " + DateTime.Parse(Eval("Dt_Cadastro").ToString()).ToString("dd/MM/yyy")%>'></asp:Label>
                                            </div>

                                        <div class="row-fluid" style="padding-left:0px;">
                                            <div  style="margin-left:2px;">
                                                <p id="resumo4"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                                                   
                                
                                            </div>
                                       <asp:Button ID="lnkNoticia2" runat="server"  CommandName="conteudo2"  CommandArgument='<%# Eval("Id_Cont") %>' CssClass="btn btn-destaque " Text="Ver Mais">  </asp:Button>
                                    </div>
                                   
                                </div>
                          </AlternatingItemTemplate>
                            
                            
                                
                           
            </asp:Repeater>
                </div>
                <div class="text-center verMaisNoticia" style="margin-top:5px;">
                                    <a href="noticias.aspx">Veja mais conteudos...</a>
                                </div>
         
        </div>
  <style>
       
       
        #box-design-default{
            display: inline-flex;
            margin: 50px auto;
            padding: 0;
        }
        #resumo{
            color: white;
            font-family: sans-serif;
            letter-spacing: initial;
        }
      
        
        
        #resumo4{
            color: white;
            font-family: sans-serif;
            letter-spacing: initial;
        }
        
        #dt_pun{
            margin-left: 10px;
        }
        #box-default{
           
            color: white;
            width: 350px;
            height: 350px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-radius: 45px;
            padding: 10px;
            display: block;
            position: relative;
            top: 0;
            background: black;
            font-family: sans-serif;
            margin-left: 10px;
          
             margin-right: 0px;
            font-weight: 100;
            text-align: center;
            font-size: medium;
        }
         #box2-default{
         
             color: white;
             width: 350px;
            height: 350px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-radius: 45px;
            padding: 10px;
            display: block;
             position: relative;
              top: 0;
            background: black;
            font-family: sans-serif;
          
             margin-left: 10px;
             margin-right: 0px;
            font-weight: 100;
            text-align: center;
            font-size: medium;
        }
          
        #box-default h1{
            color: lightpink;
            text-transform: uppercase;
            font-weight: 500;
            text-align:center;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        #box2-default h1{
            text-align:center;
            color:#C1FCC1;
            text-transform: uppercase;
            font-weight: 500;
            padding-top: 20px;
            padding-bottom: 20px;
        }
       
        
        #box-default h2{
           
            position:relative;
            transform: translate(10%, 200%);
            font-weight: 100;
            font-size: medium;
            
            
        }
        #box2-default h2{
           
            position:relative;
            transform: translate(10%, 200%);
            font-weight: 100;
            font-size: medium;
            
            
        }
       
        #box-default input[type = "submit"]{
            border: 0;
            background: none;
            display: block;
            margin-left: 22%;
            margin-top: auto;
            position:center;
            bottom: 0;
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


        #box-default input[type = "submit"]:hover {
            background: rgb(23,122,101);
        }
        
        #box2-default input[type = "submit"] {
            border: 0;
            background: none;
            display: block;
            margin-left: 22%;
            margin-top: auto;
            text-align: center;
            position: center;
             bottom: 0;
            border: 2px solid rgb(23,122,101);
            padding: 14px 40px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }


        #box2-default input[type = "submit"]:hover {
            background: rgb(23,122,101);
        }
        </style>  
</asp:Content>
