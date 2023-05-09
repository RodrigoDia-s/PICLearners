<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarPergunta.aspx.cs" ValidateRequest="false" Inherits="Learners.VisualizarPergunta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <strong><h1 style="font-family: sans-serif;">Pergunta</h1></strong>
     </div>
    <div class="row" style=" margin-bottom:50px; padding:10px; border-bottom: 5px solid #dddddd; background-color: #FAF9F9; border-radius: 10px;  width: 100%; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425); display:flex;">
    <div class="col-lg-12">
        <div class="tituloNoticia">
        <h1  ><asp:Label ID="lblTitulo" runat="server" Width="100%" Text="Label"></asp:Label></h1>
    </div>

        <h6 style="padding-left:10px;"><asp:Label ID="lblData" runat="server" CssClass="data-public" Width="100%" Text="Label"></asp:Label></h6>
    </div>
        <hr />
        <div style="padding-left:10px;">    
            <div id="Descricao" runat="server" class="col-lg-12 descPerRes" >
    
        </div>

        </div>

    <div class="col-lg-12 data-public">
    <h5 style="padding-left:10px;"><asp:Label ID="lblCliente" runat="server" Width="100%" Text="Label" ></asp:Label></h5>
    </div>
        </div>
        <hr />
    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                         <strong><h1 style="font-family: sans-serif;">Respostas</h1></strong>
                     </div>
    <div class="row" style=" margin-bottom:50px; padding:10px; border-bottom: 5px solid #dddddd; background-color: #FAF9F9; border-radius: 10px;  width: 100%; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.425); display:flex;">
    <asp:Repeater ID="RpRespostas" runat="server" OnItemDataBound="RpRespostas_ItemDataBound" >
        <ItemTemplate>
            <div style="font-size:larger;">

                <strong><h4style="padding-left:10px;"><asp:Label ID="lblCliente" runat="server" Width="100%" Text= '<%#Eval("Nome")%>' ></asp:Label></h4style="padding-left:10px;"></strong>
             </div>
            <div id="Resposta" runat="server" class="col-lg-12 descPerRes">
            <%#Eval("Descricao")%>
                </div>
            <div class="col-lg-12 data-public" style=" border-bottom: 2px solid #dddddd; margin-bottom:10px;">
            <h6 style="padding-left:10px;"><asp:Label ID="lblData" runat="server" CssClass="data-public" Width="100%" ></asp:Label></h6>
            
                </div>
          
            <hr />
        </ItemTemplate>
    </asp:Repeater>
        </div>
    <h2>Registre uma resposta:</h2>
    <div class="col-lg-12">
      <asp:TextBox ID="txtConteudo"  runat="server" TextMode="MultiLine" ></asp:TextBox>
    </div>
    
        <div class="text-center col-lg-12" style="margin-top: 10px">
    <asp:Button ID="btnCadastrar" CssClass="Bt_Resp" runat="server" Text="Enviar Resposta" OnClick="btnCadastrar_Click" /><input id="Bt_Voltar" type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
  </div>
    <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
         
        </div>
    <style>
        .Bt_Resp{
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
         .Bt_Resp:hover{
             background: rgb(23,122,101);
             color:white;
         }
        #Bt_Voltar{
             border: 0;
            background: none;
            display: block;
            margin: 20px auto;
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
    </style>
		<script>
            CKEDITOR.replace("<% =txtConteudo.ClientID %>",
                {
                toolbar: 'Basic',
                }
            );
		</script>

</asp:Content>
