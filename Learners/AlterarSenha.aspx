<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlterarSenha.aspx.cs" Inherits="Learners.AlterarSenha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery.mask.min.js"></script>
    
             <div class="box">
            <h1>Alterar Login</h1>
         
    
             <asp:TextBox ID="txtLogin"  runat="server" ></asp:TextBox>
      
          
    <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" placeholder="Nova senha"></asp:TextBox>
    

           
    <asp:TextBox ID="txtConfirmaSenha" TextMode="Password" runat="server" placeholder="Confirmar nova senha">></asp:TextBox>

            
     <asp:Button ID="btnAlterar" runat="server" CssClass="btn btn-destaque" Enabled ="true"  Text="Alterar" OnClick="btnAlterar_Click" />
    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-destaque2" Enabled ="true"  Text="Cancelar" OnClick="btnCancelar_Click" />
                 <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>      
       </div>
          
        
        <style>

  .box{
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
.box h1{
    color: white;
    text-transform: uppercase;
    font-weight: 500;
}
.box input[type = "text"], .box input[type = "password"]{
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

.box input[type = "text"]:focus, .box input[type = "password"]:focus {
     width: 400px;
    border-color: rgb(23,122,101);
        
}


.box input[type = "submit"] {
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


.box input[type = "submit"]:hover {
    background: rgb(23,122,101);
}
    </style>
    <script type="text/javascript">
        $('#<%= txtLogin.ClientID %>').mask("999999x");

    </script>
</asp:Content>
