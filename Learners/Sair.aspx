<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sair.aspx.cs" Inherits="Learners.Sair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center">
    <h1 style="font-family:sans-serif; font-weight:300;">Tem certeza que deseja sair?</h1>
        <div id="button-perg">
    <asp:Button ID="btnSim" runat="server" CssClass="btn btn-destaque" Text="Sim" OnClick="btnSim_Click" />
        </div>
        <div id="Bt_Voltar">
    <asp:Button ID="btnNao" runat="server" CssClass="btn btn-destaque" Text="Não" OnClick="btnNao_Click" />
            </div>
</div>
    <style>
         #Bt_Voltar input[type = "submit"]{
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
        #Bt_Voltar input[type = "submit"]:hover{
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
    </style>
</asp:Content>
