<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClinicaVeterinaria.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <script src="Scripts/jquery.mask.min.js"></script>
  


    <!--<div class="box">
        <h1>Login</h1>
        <input type="text" name="txtLogin" placeholder="Usuário" />
        <input type="password" name="txtSenha" placeholder="Senha" />
        <input type="submit" name="btnLogar" value="Login" />
    </div>-->
   <div class="box-menu">
       <h1>LOGIN</h1>
        <asp:TextBox ID="txtLogin" placeholder="Usuário" runat="server"></asp:TextBox>
 
             <asp:TextBox ID="txtSenha" Type="password" placeholder="Senha" runat="server"></asp:TextBox>
               
            <div class="col-lg-12">
        <asp:LinkButton ID="lnkEsqueceu" OnClick="lnkEsqueceu_Click"  runat="server">Esqueceu a senha?</asp:LinkButton>
     
     <asp:Button ID="btnLogar" runat="server" CssClass="btn btn-destaque" Enabled ="true"  Text="Logar" OnClick="btnLogar_Click" />
<asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-destaque2" Enabled ="true"  Text="Cadastrar" OnClick="btnCadastrar_Click" />
  </div>
        <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
        
       </div>
    <style>

   .box-menu{
    width: 500px;
    border-radius: 45px;
    padding: 40px;
    position: relative;
    left: 50%;
    transform: translate(-50%, 5%);
    background: black;
    text-align: center;
    font-family: sans-serif;
    margin-bottom:50px;
}
    .box-menu h1{
    color: white;
    text-transform: uppercase;
    font-weight: 500;
}
    .box-menu input[type = "text"], .box-menu input[type = "password"]{
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

.box-menu input[type = "text"]:focus, .box-menu input[type = "password"]:focus {
     width: 400px;
    border-color: rgb(23,122,101);
        
}


.box-menu input[type = "submit"] {
    border: 0;
    background: none;
    display: block;
    margin-top: 20px;
    margin-left: 30%;
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


.box-menu input[type = "submit"]:hover {
    background: rgb(23,122,101);
}
    </style>
    <script type="text/javascript">
        $('#<%= txtLogin.ClientID %>').mask("9999999");

    </script>
</asp:Content>
