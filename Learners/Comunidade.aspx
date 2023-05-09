<%@ Page Title="Comunidade Pet's Friends" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comunidade.aspx.cs" Inherits="Learners.Comunidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     

     <div class="container">
    
    <div class="row "  >
    <div class="col-2"  >
       <div class="nav nav-pills nav-fill" style="border-color:rgba(45, 132, 119, 0.1); border-style: solid; border-radius:0.70rem; margin-top: 40px; margin-left:1px;" id="v-pills-tab" role="menubar" aria-orientation="horizontal">
            <a class="nav-item nav-link mb-0 active" id="v-pills-home-tab" data-toggle="pill" href="#home" role="tab" aria-controls="v-pills-home" aria-selected="true" ><h4> Home</h4></a>
            <a  class="nav-item nav-link mb-0" id="v-pills-profile-tab" data-toggle="pill" href="#perguntas" role="tab" aria-controls="v-pills-sprofile" aria-selected="false""><h4>Perguntas</h4></a>
            <a  class="nav-item nav-link mb-0" id="v-pills-settings-tab" data-toggle="pill" href="#wiki" role="tab" aria-controls="v-pills-settings" aria-selected="false"><h4>Wiki</h4></a>
        </div>
    </div>

    <div class="col-10">
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="col-lg-12">
                    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                         <strong><h1 style="font-family: sans-serif; font-weight:100;">Perguntas</h1></strong>
                     </div>
                            <asp:Repeater ID="RepeaterPerguntas3" OnItemCommand="RepeaterPerguntas_ItemCommand" runat="server">
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
                                    <FooterTemplate>
                                    <div class="text-center verMaisNoticia">
                                        <a href="Perguntas.aspx">Ver mais perguntas...</a>
                                    </div>
                                    </FooterTemplate>
                                 

                            </asp:Repeater>
                   

                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                 <strong><h1 style="font-family: sans-serif; font-weight:100;">Wiki</h1></strong>
                                </div>
    
                        

                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="RptAnimaisPerdido_ItemCommand2" OnItemDataBound="RptAnimaisPerdido_ItemDataBound2">
                        <ItemTemplate>
                            <div class="row" id ="box">
                            <div class="col-lg-7 ">
                            <div class="row-fluid">
                            <div class="col-lg-12 tituloWiki" style="padding-top:20px; ">
                                <h1><asp:Label ID="Label2" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                             
                            </div>
                            </div>
                                       
                            <div class="row-fluid">
                            <div class="col-lg-12 data-public"  style=" padding-left:20px;">
                                <asp:Label ID="lblDt_cadastro" runat="server" Text=''></asp:Label>
                            </div>
                            </div>
                                       
                            <div class="row-fluid">
                            <div class="col-lg-12 resumoWiki"  style="padding-top:20px; padding-left:20px;">
                                <p class="text-justify resumoWiki"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                                <asp:Button ID="LinkButton1" runat="server"  CommandName="wiki2"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais"> </asp:Button>
                                
                            </div>
                            </div>
                            </div>
                                    
                            <div class="col-lg-5 imagemWiki">
                                <asp:ImageMap ID="ImgWiki2" runat="server" Height="100%" Width="100%" AlternateText="Wiki" ></asp:ImageMap>
                                
                                  
                            </div>
                            </div>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                          <div class="row" id="box">
                            <div class="col-lg-5 imagemWiki">
                                <asp:ImageMap ID="ImgWiki2" runat="server" Height="100%" Width="100%" AlternateText="Wiki" ></asp:ImageMap>
                                
                                  
                            </div>

                            <div class="col-lg-7 ">
                            <div class="row-fluid">
                            <div class="col-lg-12 tituloNoticia" style=" padding-top:20px;">
                                <h1><asp:Label ID="Label2" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                                
                                              
                            </div>
                            </div>
                
                            <div class="row-fluid">
                            <div class="data-public col-lg-12 " style="padding-left:20px;">
                                <asp:Label ID="lblDt_cadastro" runat="server" Text=''></asp:Label>
                            </div>
                            </div>

                            <div class="row-fluid">
                            <div class="col-lg-12 resumoWiki" style=" padding-top:20px; padding-left:20px;">
                                <p class="text-justify resumoNoticia"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                                  <asp:Button ID="LinkButton1" runat="server"  CommandName="wiki2"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais"> </asp:Button>
                                
                            </div>
                            </div>
                            </div>
                            </div>
                </AlternatingItemTemplate>
                            
                    <FooterTemplate>
                        <div class="text-center verMaisNoticia">
                            <a href="Wiki.aspx">Ver mais posts...</a>
                         </div>
                    </FooterTemplate>
                 </asp:Repeater>
                 </div>
                </div>
       
                    
          
            <div class="tab-pane fade" id="perguntas" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                <div class="col-lg-12">
                    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                         <strong><h1 style="font-family: sans-serif; font-weight:100;">Perguntas</h1></strong>
                     </div>
                            <div id="button-perg" >
                                <asp:Button ID="lnkCadPergunta" runat="server" CssClass="btn btn-destaque" OnClick="lnkCadPergunta_Click" Text="Registrar Pergunta"></asp:Button>
                             </div>
                            <asp:Repeater ID="Repeater2" OnItemCommand="RepeaterPerguntas_ItemCommand2" runat="server">
                                <ItemTemplate>
                                    <div></div>
                                   <div class="row" id="box-perguntas">
                                    <div class="col-lg-12 ">
                                    <div class="row-fluid">
                                     <h2 >
                                      <asp:Label ID="lblDescricao" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label><div id="linha"></div></h2>
                       
                                        
                        
                                    <div class="col-lg-20 " style="position:relative; float:right;">
                                            <asp:Button ID="lnkVisualizar" runat="server" CssClass="btn btn-destaque" CommandArgument='<%# Eval("Id_Pergunta") %>' CommandName="perguntas"  Text="Visualizar"/>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                 </ItemTemplate>
                                <FooterTemplate>
                                    <div class="text-center verMaisNoticia">
                                        <a href="Perguntas.aspx">Ver mais perguntas...</a>
                                    </div>
                                    </FooterTemplate>

                            </asp:Repeater>
                     </div>
                      </div>
                   

       
            <div class="tab-pane fade" id="wiki" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                <div class="col-lg-12">
                           <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                 <strong><h1 style="font-family: sans-serif; font-weight:100;">Wiki</h1></strong>
                                </div>
 

            
                
            <div class="col-lg-12 text-right" style="display:inline; float:right;">
                <div id="button-perg" >
                <asp:Button  ID="LinkButton2" runat="server" CssClass="btn btn-destaque" OnClick="lnkCadWiki_Click" Text="Registrar Wiki"></asp:Button>
                  </div>
             </div>
            <asp:Repeater ID="RptAnimaisPerdido" runat="server" OnItemCommand="RptAnimaisPerdido_ItemCommand" OnItemDataBound="RptAnimaisPerdido_ItemDataBound">
            <ItemTemplate>
                <div class="row" id="box">
                <div class="col-lg-7 ">
                <div class="row-fluid">
                <div class="col-lg-12 tituloWiki" style=" padding-top:20px;">
                    <h1><asp:Label ID="Label1" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                             
                </div>
                </div>
                                       
                <div class="row-fluid">
                <div class="col-lg-12 data-public"  style=" padding-left:20px;">
                    <asp:Label ID="lblDt_cad" runat="server" Text=''></asp:Label>
                </div>
                </div>
                                       
                <div class="row-fluid">
                <div class="col-lg-12 resumoWiki"  style=" padding-top:20px; padding-left:20px;">
                    <p class="text-justify resumoWiki"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                    <asp:Button ID="LinkButton1" runat="server"  CommandName="wiki"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais"> </asp:Button>
                                
                </div>
                </div>
                </div>
                                    
                <div class="col-lg-5 imagemWiki">
                    <asp:ImageMap ID="ImgWiki" runat="server" Height="100%" Width="100%" AlternateText="Wiki" ></asp:ImageMap>
                                
                                  
                </div>
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
              <div class="row" id="box">
                <div class="col-lg-5 imagemWiki">
                    <asp:ImageMap ID="ImgWiki" runat="server" Height="100%" Width="100%" AlternateText="Wiki" ></asp:ImageMap>
                                
                                  
                </div>

                <div class="col-lg-7 ">
                <div class="row-fluid">
                <div class="col-lg-12 tituloNoticia" style=" padding-top:20px;">
                    <h1><asp:Label ID="Label2" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                                
                                              
                </div>
                </div>
                
                <div class="row-fluid">
                <div class="data-public col-lg-12 " style=" padding-left:20px;">
                    <asp:Label ID="lblDt_cad" runat="server" Text=''></asp:Label>
                </div>
                </div>

                <div class="row-fluid">
                <div class="col-lg-12 resumoWiki" style="padding-top:20px; padding-left:20px;">
                    <p class="text-justify resumoNoticia"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                    <asp:Button ID="LinkButton1" runat="server"  CommandName="wiki"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais"> </asp:Button>
                                
                </div>
                </div>
                </div>
                </div>
            </AlternatingItemTemplate>
                            
                <FooterTemplate>
                    <div class="text-center verMaisNoticia">
                        <a href="Wiki.aspx">Ver mais posts...</a>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
           
        </div>
        </div>
       
        </div>
         </div>
        </div>
         </div>

    
             


<style>
    #box{
            color: white;
            width: auto;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-radius: 45px;
            padding: 20px;
            position: relative;
            left: 50%;
            transform: translate(-50%, 5%);
            background: black;
            font-family: sans-serif;
            margin-bottom:20px;
            font-weight: 100;
    }
    #box h1{
        text-align:center;
        color: white;
        text-transform: uppercase;
       font-weight: 500;
    }
     #box input[type = "submit"] {
            border: 0;
            background: none;
            display: block;
            position: relative;
     
            
            margin: 20px auto;
            text-align: center;
            border: 2px solid rgb(23,122,101);
            padding: 14px 30px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }


        #box input[type = "submit"]:hover {
            background: rgb(23,122,101);
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
