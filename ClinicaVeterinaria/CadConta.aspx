<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadConta.aspx.cs" Inherits="ClinicaVeterinaria.CadConta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery.mask.min.js"></script>
    <div class="container">
        <div class="col-lg-12">
        <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <strong><h1 style="font-family: sans-serif; font-weight:300;">Cadastro</h1></strong>
     </div>
        <div class="row">
           <div class="col-lg-12 text-left " style="margin-bottom:10px;">
            <asp:Label ID="Label1" runat="server" Text="Digite somente os números de seu RM para efetuar a pesquisa"></asp:Label>
            
           
           </div>
            </div>
        <div class="row">
            <div class="col-lg-12 ">
           <div class="col-lg-6 " style="padding: 0px; width:25%; display:inline-block; top: 20px;">
               <asp:TextBox ID="txtPesRM" CssClass="form-control "  runat="server"  ></asp:TextBox> 
          
           </div>
            <div class="col-lg-6 "  style="margin:0px;"  >   
                <div id="button-perg">
                <asp:Button ID="lnkPesquisar" runat="server"  CssClass="btn btn-destaque" OnClick="lnkPesquisar_Click" Text="Pesquisar"></asp:Button>
                </div>
          </div>
            </div>
            </div>
        
        <div class="dropdown-divider "></div>
<h3>Informações Pessoais</h3>
        <div class="row">

            <div class="col-lg-4">
                <asp:Label ID="lblNome" runat="server" >Nome</asp:Label>
               <asp:TextBox ID="txtNome" CssClass="form-control " runat="server" Width="100%"  ></asp:TextBox>
           
                </div> 
                <div class="col-lg-3 col-md-3 col-sm-3 col-xl-3">
                <asp:Label ID="lblDataNac" runat="server" >Data de Nascimento</asp:Label>
               <asp:TextBox ID="txtDataNasc" CssClass="form-control " placeholder="00/00/0000"  runat="server" ></asp:TextBox>
           
                    </div>
          
            
            <div class="col-lg-2 col-md-2 col-sm-2 col-xl-2">
                <asp:Label ID="lblCPF" runat="server" >CPF</asp:Label>
               <asp:TextBox ID="txtCPF" CssClass="form-control" placeholder="000.000.000-00"  runat="server" ></asp:TextBox>           
                </div>
          
            <div class="col-lg-5 col-md-2 col-sm-2 col-xl-2">
                <asp:Label ID="lblEmail" runat="server" >Email</asp:Label>
               <asp:TextBox ID="txtEmail" CssClass="form-control " placeholder="exemplo@ex.com" TextMode="Email" runat="server"></asp:TextBox>           
                </div>
            
            
            
            
            
            
            
               
             <div class="col-lg-3 ">
                <asp:Label ID="lblGenero" runat="server"  >Gênero</asp:Label>
                <asp:CheckBoxList ID="ckLGenero" RepeatDirection="Horizontal"  runat="server" OnClick="MutExChkList">
                    <asp:ListItem Text="Masculino" Value="0" Selected ="True" ></asp:ListItem>
                    <asp:ListItem Text="Feminino" Value="1" Selected="False" ></asp:ListItem>
                </asp:CheckBoxList>
        </div>
           
            <br />
            <div class="col-lg-12 text-center " >
        <div id="CadastrarCli" class=" text-center " runat="server"  >
            <div id="button-perg">
                <asp:Button ID="lnkCadastrar" CssClass="btn btn-destaque" runat="server" OnClick="lnkCadastar_Click" Text="Cadastrar"></asp:Button>
                </div>
        </div>
                <div id="button-perg">
                <div id="ContinuarCli" class=" text-center" runat="server"  >
                <asp:Button ID="btnContinuar" runat="server" CssClass="btn btn-destaque" OnClick="btnContinuar_Click" Text="Continuar"></asp:Button>
        </div>
        </div>
        </div>
  </div>     
            </div>
            <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
    
        </div>
    <style>
        #button-perg input[type = "submit"]{
            border: 0;
            background: none;
            display: inline-block;
            
            text-align: center;
            border: 2px solid rgb(23,122,101);
            padding: 14px 40px;
            width: 150px;
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
    <script type="text/javascript">
        $('#<%= txtCPF.ClientID %>').mask("999.999.999-99");
      
        $('#<%= txtPesRM.ClientID %>').mask("999999x");
        $('#<%= txtDataNasc.ClientID %>').mask("99/99/9999");
         function MutExChkList(chk) {
        var cbs= document.getElementsByTagName("ckLGenero");
         for(var i = 0; i < cbs.length; i++) {
             if(cbs[i].type == "checkbox") {
                   if (cbs[i].id <> chk.id) {
                  cbs[i].checked = false;
              } 
             }     
         }
        }
    </script>
</asp:Content>
