<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="noticias.aspx.cs" Inherits="ClinicaVeterinaria.noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                         <strong><h1 style="font-family: sans-serif; font-weight:300;">Conteudo</h1></strong>
                     </div>
        <div id="box-design-conteudo">
        <asp:Repeater ID="RptNoticias" runat="server" OnItemCommand="RptNoticias_ItemCommand" OnItemDataBound="RptNoticias_ItemDataBound">
             
            <ItemTemplate>
                <div   id="box">
                                   
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
                              <div  id="box2">
                                  
                                        
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
  </div>


    <style>
       
        #box-design-conteudo{
            display: inline-block;
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
       #box{
           
            color: white;
            width: 350px;
            height: 350px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-radius: 45px;
            padding: 10px;
            display: inline-grid;
           
            background: black;
            font-family: sans-serif;
            margin-left: 10px;
          
             margin-bottom: 10px;
            font-weight: 100;
            text-align: center;
            font-size: medium;
        }
         #box2{
         
            color: white;
             width: 350px;
            height: 350px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425);
            border-radius: 45px;
            padding: 10px;
            display: inline-grid;
            
            background: black;
            font-family: sans-serif;
          
             margin-left: 10px;
             margin-bottom: 10px;
            font-weight: 100;
            text-align: center;
            font-size: medium;
        }
          
        #box h1{
            color: lightpink;
            text-transform: uppercase;
            font-weight: 500;
            text-align:center;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        #box2 h1{
            text-align:center;
            color:#C1FCC1;
            text-transform: uppercase;
            font-weight: 500;
            padding-top: 20px;
            padding-bottom: 20px;
        }
       
        
        #box h2{
           
            position:relative;
            transform: translate(10%, 200%);
            font-weight: 100;
            font-size: medium;
            
            
        }
        #box2 h2{
           
            position:relative;
            transform: translate(10%, 200%);
            font-weight: 100;
            font-size: medium;
            
            
        }
       
        #box input[type = "submit"]{
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


        #box input[type = "submit"]:hover {
            background: rgb(23,122,101);
        }
        
        #box2 input[type = "submit"] {
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


        #box2 input[type = "submit"]:hover {
            background: rgb(23,122,101);
        }
        
    </style>
</asp:Content>
