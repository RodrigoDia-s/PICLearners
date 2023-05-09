<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MinhaConta.aspx.cs" Inherits="Learners.MinhaConta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
   <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <h1 style="font-family: sans-serif; font-weight:100;">Minha conta</h1>
        </div>
        <div class="col-lg-12" >
            <div class="col-lg-4">
                <label>Nome: </label>
                <asp:Label ID="lblNome" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-lg-3">
                <label>Gênero: </label>
                <asp:Label ID="lblSexo" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-lg-3">
                <label>CPF: </label>
                <asp:Label ID="lblCPF" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-lg-3">
                <label>RM: </label>
                <asp:Label ID="lblRM" runat="server" Text=""></asp:Label>
            </div>

            
            <div class="col-lg-3">
                <label>Email: </label>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-lg-4">
                <label>Data de Nascimento: </label>
                <asp:Label ID="lblDtNasc" runat="server" Text=""></asp:Label>
            </div>
            
        </div>

       
    <br />
     <div class="col-lg-12" runat="server" id="SharpDiv" style="margin-top:50px; display:inline-table;">
          <div class="col-lg-12" >
          <h1 style="font-family:sans-serif; font-weight:300;">QUESTIONÁRIO C#:</h1>
           </div>
       <asp:Repeater runat="server" ID="RepeaterSharp">
           <ItemTemplate>

                
            <div class="col-lg-12">
                <label>Titulo: </label>
                <asp:Label ID="LabelTitulo" runat="server"  Text='<%#Eval("Titulo")%>'></asp:Label>
            </div>
            <div class="col-lg-12">
                <label>Pontuação: </label>
                <asp:Label ID="LabelPont" runat="server"  Text='<%#Eval("Pontuacao")%>'></asp:Label>
            </div>
         <br />
           </ItemTemplate>
       </asp:Repeater>
      </div>
         <br /> 
         <div class="col-lg-12" runat="server" id="ScriptDiv" style="margin-top:50px; display:inline-table;">
          <div class="col-lg-12" >
          <h1 style="font-family:sans-serif; font-weight:300;">QUESTIONÁRIO JAVASCRIPT:</h1>
           </div>
       <asp:Repeater runat="server" ID="Repeaterjs">
           <ItemTemplate>

                
            <div class="col-lg-12">
                <label>Titulo: </label>
                <asp:Label ID="LabelTitulo" runat="server"  Text='<%#Eval("Titulo")%>'></asp:Label>
            </div>
            <div class="col-lg-12">
                <label>Pontuação: </label>
                <asp:Label ID="LabelPont" runat="server"  Text='<%#Eval("Pontuacao")%>'></asp:Label>
            </div>
         <br />
           </ItemTemplate>
       </asp:Repeater>
      </div>
         <br /> 
         <div class="col-lg-12" runat="server" id="PythonDiv" style="margin-top:50px; display:inline-table;">
          <div class="col-lg-12" >
          <h1 style="font-family:sans-serif; font-weight:300;">QUESTIONÁRIO PYTHON::</h1>
           </div>
       <asp:Repeater runat="server" ID="RepeaterPython">
           <ItemTemplate>

                
            <div class="col-lg-12">
                <label>Titulo: </label>
                <asp:Label ID="LabelTitulo" runat="server"  Text='<%#Eval("Titulo")%>'></asp:Label>
            </div>
            <div class="col-lg-12">
                <label>Pontuação: </label>
                <asp:Label ID="LabelPont" runat="server"  Text='<%#Eval("Pontuacao")%>'></asp:Label>
            </div>
         <br />
           </ItemTemplate>
       </asp:Repeater>
      </div>
         <br /> 
         <div class="col-lg-12" runat="server" id="CDiv" style="margin-top:50px; display:inline-table;">
          <div class="col-lg-12" >
          <h1 style="font-family:sans-serif; font-weight:300;">QUESTIONÁRIO C:</h1>
           </div>
       <asp:Repeater runat="server" ID="RepeaterC">
           <ItemTemplate>

                
            <div class="col-lg-12">
                <label>Titulo: </label>
                <asp:Label ID="LabelTitulo" runat="server"  Text='<%#Eval("Titulo")%>'></asp:Label>
            </div>
            <div class="col-lg-12">
                <label>Pontuação: </label>
                <asp:Label ID="LabelPont" runat="server"  Text='<%#Eval("Pontuacao")%>'></asp:Label>
            </div>
         <br />
           </ItemTemplate>
       </asp:Repeater>
      </div>
         <br /> 
        <div class="col-lg-12" runat="server" id="AnimaisPerdidos">
            <hr style="margin-top:3%;" />
            <h1 style="margin-top:3%;">Meus Wikis:</h1>
            <div id="button-perg">
                <asp:Button ID="btnCadWiki" runat="server" CssClass="btn btn-detaque" Text="Cadastrar Wiki" OnClick="btnCadWiki_Click" />
             </div>
    <br />
 




            <asp:GridView ID="GridAnimalPerdido" runat="server" CssClass=" table" OnRowEditing="GridAnimalPerdido_RowEditing" OnRowDeleting="GridAnimalPerdido_RowDeleting" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" PagerSettings-Visible="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="Id_Wiki">       
   
        <AlternatingRowStyle BackColor="White" />
   
        <Columns>
    
        
    <asp:BoundField DataField="Titulo" HeaderText="Titulo">
    </asp:BoundField>    

    <asp:BoundField DataField="Descricao" HeaderText="Descricao">
    </asp:BoundField>    
        
    <asp:BoundField DataField="Resumo" HeaderText="Resumo">
    </asp:BoundField>    
        
            
    <asp:BoundField DataField="Dt_Cadastro" HeaderText="Data de Cadastro">
    </asp:BoundField>    
            <asp:TemplateField HeaderText="Realizar...">
                <ItemTemplate>
                    <div class="btn-group">
                        <asp:LinkButton ID="lnkAlterar" runat="server" CssClass="btn btn-destaque " CommandArgument='<%# Eval("Id_Wiki") %>' CommandName="Edit">Alterar<i class="icn-edit-2" style="font-size:12px "></i></asp:LinkButton>
                        <asp:LinkButton ID="lnkExcluir" runat="server" CssClass="btn btn-destaque2 " CommandArgument='<%# Eval("Id_Wiki") %>' CommandName="Delete" OnClientClick = "Confirm()">Excluir<i class="icn-cancel-1" style="font-size:12px "></i></asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />



   
        
<PagerSettings Visible="False"></PagerSettings>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        </div>
       

         <div class="col-lg-12" runat="server" id="PerguntasDiv">
            <hr style="margin-top:3%;" />
            <h1 style="margin-top:3%;">Minhas Perguntas:</h1>
         <div id="button-perg">
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-destaque" Text="Cadastrar Pergunta" OnClick="btnCadPergunta_Click" />
    </div>
    <br />
 
            <asp:GridView ID="GridPerguntas" runat="server" CssClass=" table" OnRowEditing="GridPerguntas_RowEditing" OnRowDeleting="GridPerguntas_RowDeleting" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" PagerSettings-Visible="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="Id_Pergunta">       
   
        <AlternatingRowStyle BackColor="White" />
   
        <Columns>
    
        
    <asp:BoundField DataField="Titulo" HeaderText="Titulo">
    </asp:BoundField>    

    <asp:BoundField DataField="Descricao" HeaderText="Descricao">
    </asp:BoundField>    
        
   
            
    <asp:BoundField DataField="Dt_Cadastro" HeaderText="Data de Cadastro">
    </asp:BoundField>    
            <asp:TemplateField HeaderText="Realizar...">
                <ItemTemplate>
                    <div class="btn-group">
                        <asp:LinkButton ID="lnkAlterar" runat="server" CssClass="btn btn-destaque " CommandArgument='<%# Eval("Id_Pergunta") %>' CommandName="Edit">Visualizar<i class="icn-edit-2" style="font-size:12px "></i></asp:LinkButton>
                        <asp:LinkButton ID="lnkExcluir" runat="server" CssClass="btn btn-destaque2 " CommandArgument='<%# Eval("Id_Pergunta") %>' CommandName="Delete" OnClientClick = "Confirm()">Excluir<i class="icn-cancel-1" style="font-size:12px "></i></asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />

      



        <PagerSettings Visible="False"></PagerSettings>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        </div>



          <div class="col-lg-12" runat="server" id="RespostasDiv">
            <hr style="margin-top:3%;" />
            <h1 style="margin-top:3%;">Minhas Respostas:</h1>
           
    <br />
 
            <asp:GridView ID="GridRespostas" runat="server" CssClass=" table" OnRowEditing="GridRespostas_RowEditing" OnRowDeleting="GridRespostas_RowDeleting" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" PagerSettings-Visible="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="Id_Resposta">       
   
        <AlternatingRowStyle BackColor="White" />
   
        <Columns>
    
        
       

    <asp:BoundField DataField="Descricao" HeaderText="Descricao">
    </asp:BoundField>    
        
   
            
    <asp:BoundField DataField="Dt_Cadastro" HeaderText="Data de Cadastro">
    </asp:BoundField>    
            <asp:TemplateField HeaderText="Realizar...">
                <ItemTemplate>
                    <div class="btn-group">
                        <asp:LinkButton ID="lnkAlterar" runat="server" CssClass="btn btn-destaque " CommandArgument='<%# Eval("Id_Resposta") %>' CommandName="Edit">Visualzar<i class="icn-edit-2" style="font-size:12px "></i></asp:LinkButton>
                        <asp:LinkButton ID="lnkExcluir" runat="server" CssClass="btn btn-destaque2 " CommandArgument='<%# Eval("Id_Resposta") %>' CommandName="Delete" OnClientClick = "Confirm()">Excluir<i class="icn-cancel-1" style="font-size:12px "></i></asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />

      



        <PagerSettings Visible="False"></PagerSettings>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        </div>
        </div>
    <style>
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
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Deseja excluir o registro?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
