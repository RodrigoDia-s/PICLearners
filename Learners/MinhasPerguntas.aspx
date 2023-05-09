<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MinhasPerguntas.aspx.cs" Inherits="Learners.MinhasPergintas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
<h1 style="margin-top:2%;">Minhas Perguntas</h1>
    <asp:Repeater ID="RepeaterPerguntas" runat="server" OnItemCommand="RepeaterPerguntas_ItemCommand">
        <ItemTemplate>
               <div class="col-lg-12" >
                <hr  />
                    <div class="col-lg-8">
                <h2>
                  <asp:Label ID="lblDescricao" runat="server" Width="100%" Text= '<%#Eval("Titulo")%>'>
                                                   </asp:Label></h2>
                       
                    </div>
                        
                    <div class="col-lg-2">
                        <asp:Button ID="lnkVisualizar" runat="server" CssClass="btn btn-destaque" CommandArgument='<%# Eval("Id_Pergunta") %>' CommandName="pergunta"  Text="Visualizar"/>
                </div>

                </div>

        </ItemTemplate>
    </asp:Repeater>
        </div>
</asp:Content>
