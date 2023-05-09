<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadLogin.aspx.cs" Inherits="ClinicaVeterinaria.CadLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container " style=" position:relative; left:27%; margin-top:50px;">
       <label>Seu login será:</label>
       <asp:TextBox ID="txtLogin"  CssClass="input-block-level text-center "  runat="server"></asp:TextBox>
       <label>Por Favor, insira uma senha:</label>
    <asp:TextBox ID="txtSenha" TextMode="Password" CssClass="input-block-level" runat="server"></asp:TextBox>
        <br />
       <div id="button-perg">
    <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-destaque" Enabled ="true"  Text="Cadastrar" OnClick="lnkCadastar_Click" />
       </div>
    <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
      </div>
    <style>
            #button-perg input[type = "submit"]{
            border: 0;
            background: none;
            display: block;
            margin-top: 20px ;
            margin-left: 30px;
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
