<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wiki.aspx.cs" Inherits="Learners.AnimaisPerdidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <strong><h1 style="font-family: arial;">Wiki</h1></strong>
     </div>
    <div class="container ">
            <div  style="  display:flex;">
                <h4 style="font-family:Arial; font-size:larger;">Veja os conteúdos que nossos usuários disponibilizaram:</h4>  
             </div>
            <div id="button-perg">
                <asp:Button ID="lnkCadPergunta" runat="server" CssClass="btn btn-destaque" OnClick="lnkCadPergunta_Click" Text="Cadastrar Wiki"></asp:Button>
             </div>
               <asp:Repeater ID="RptAnimaisPerdido" runat="server" OnItemCommand="RptAnimaisPerdido_ItemCommand" OnItemDataBound="RptAnimaisPerdido_ItemDataBound">
            <ItemTemplate>
                <div class="row"id="box">
                <div class="col-lg-7 ">
                <div class="row-fluid">
                <div class="col-lg-12 tituloWiki" style=" margin-top: 20px;">
                    <h1><asp:Label ID="Label1" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                             
                </div>
                </div>
                                       
                <div class="row-fluid">
                <div class="col-lg-12 data-public"  style=" padding-left:20px;">
                    <asp:Label ID="lblDt_cad" runat="server" Text=''></asp:Label>
                </div>
                </div>
                                       
                <div class="row-fluid">
                <div class="col-lg-12 resumoWiki"  style=" margin-top: 20px; padding-left:20px;">
                    <p class="text-justify resumoWiki"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                    <asp:Button ID="lnkNoticia" runat="server"  CommandName="wiki"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais">  </asp:Button>
                                
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
                <div class="col-lg-12 tituloNoticia" style=" margin-top: 20px;">
                    <h1><asp:Label ID="Label2" runat="server" Text= '<%#Eval("Titulo")%>'></asp:Label></h1>
                                                
                                              
                </div>
                </div>
                
                <div class="row-fluid">
                <div class="data-public col-lg-12 " style="padding-left:20px;">
                    <asp:Label ID="lblDt_cad" runat="server" Text=''></asp:Label>
                </div>
                </div>

                <div class="row-fluid">
                <div class="col-lg-12 resumoWiki" style="  margin-top: 20px; padding-left:20px;">
                    <p class="text-justify resumoNoticia"><%# System.Web.HttpUtility.HtmlDecode(Convert.ToString(Eval("Resumo")))%></p>
                     <asp:Button ID="lnkNoticia" runat="server"  CommandName="wiki"  CommandArgument='<%# Eval("Id_Wiki") %>' CssClass="btn btn-destaque " Text="Ver mais">  </asp:Button>
                                
                </div>
                </div>
                </div>
                </div>
            </AlternatingItemTemplate>
                
            </asp:Repeater>
        <input id="Bt_Voltar" type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
        </div>   
        <style>
          #Bt_Voltar{
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
        #Bt_Voltar:hover{
             background: red;
             color:white;
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


        #box input[type = "submit"]:hover {
            background: rgb(23,122,101);
        }

        </style>
        </asp:Content>
