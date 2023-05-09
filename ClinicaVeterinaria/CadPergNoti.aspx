<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="CadPergNoti.aspx.cs" Inherits="ClinicaVeterinaria.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
    <h1>Cadastrar Perguntas</h1>
        <div class="col-lg-20" style="display:inline-block;" >
            
            <div class="col-lg-12" style="margin-bottom: 50px;">
                            <label>Pergunta C#:</label>
                           <asp:TextBox ID ="txtPergSharp" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                             <div class="col-lg-12">
                            <label>Alternativa 1:</label>
                           <asp:TextBox ID ="Alt1Sharp" runat="server" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                             <div class="col-lg-12">
                                  <label>Alternativa 2:</label>
                           <asp:TextBox ID ="Alt2Sharp" runat="server" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                             <div class="col-lg-12">
                                 <label>Alternativa 3:</label>
                           <asp:TextBox ID ="Alt3Sharp" runat="server" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                             <div class="col-lg-12">
                                 <label>Alternativa 4:</label>
                           <asp:TextBox ID ="Alt4Sharp" runat="server" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                            <div class="col-lg-12">
                                 <label>Alternativa Correta:</label>
                           <asp:TextBox ID ="AltCorrSharp" runat="server" TextMode="SingleLine"></asp:TextBox>
                                 <asp:Button ID="SubmmitSharp" runat="server" CssClass="btn btn-destaque" Text="Submmit" OnClick="btnSubmmitSharp_Click" />
                            </div>  
           
                
             <div class="col-lg-12" style="margin-bottom: 50px;">
                <label>Pergunta JavaScript:</label>
               <asp:TextBox ID ="txtPergJS" runat="server" TextMode="Multiline"></asp:TextBox>
                    </div>
                 <div class="col-lg-12">
                <label>Alternativa 1:</label>
               <asp:TextBox ID ="Alt1JS" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                      <label>Alternativa 2:</label>
               <asp:TextBox ID ="Alt2JS" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 3:</label>
               <asp:TextBox ID ="Alt3JS" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 4:</label>
               <asp:TextBox ID ="Alt4JS" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                <div class="col-lg-12">
                     <label>Alternativa Correta:</label>
               <asp:TextBox ID ="AltCorrJS" runat="server" TextMode="SingleLine"></asp:TextBox>
                     <asp:Button ID="SubmmitJS" runat="server" CssClass="btn btn-destaque" Text="Submmit" OnClick="btnSubmmitJS_Click" />
                </div>
        
           

            <div class="col-lg-12" style="margin-bottom: 50px;">
                <label>Pergunta Python:</label>
               <asp:TextBox ID ="TxtPergPython" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                 <div class="col-lg-12">
                <label>Alternativa 1:</label>
               <asp:TextBox ID ="Alt1Py" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                      <label>Alternativa 2:</label>
               <asp:TextBox ID ="Alt2Py" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 3:</label>
               <asp:TextBox ID ="Alt3Py" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 4:</label>
               <asp:TextBox ID ="Alt4Py" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                <div class="col-lg-12">
                     <label>Alternativa Correta:</label>
               <asp:TextBox ID ="AltCorrPy" runat="server" TextMode="SingleLine"></asp:TextBox>
                     <asp:Button ID="SubmmitPy" runat="server" CssClass="btn btn-destaque" Text="Submmit" OnClick="btnSubmmitPy_Click" />
                </div>


            <div class="col-lg-12" style="margin-bottom: 50px;">
                <label>Pergunta C:</label>
               <asp:TextBox ID ="PergC" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                 <div class="col-lg-12">
                <label>Alternativa 1:</label>
               <asp:TextBox ID ="Alt1C" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                      <label>Alternativa 2:</label>
               <asp:TextBox ID ="Alt2C" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 3:</label>
               <asp:TextBox ID ="Alt3C" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                 <div class="col-lg-12">
                     <label>Alternativa 4:</label>
               <asp:TextBox ID ="Alt4C" runat="server" TextMode="SingleLine"></asp:TextBox>
                     </div>
                <div class="col-lg-12">
                     <label>Alternativa Correta:</label>
               <asp:TextBox ID ="AltCorrC" runat="server" TextMode="SingleLine"></asp:TextBox>
                     <asp:Button ID="btnSubmmitC" runat="server" CssClass="btn btn-destaque" Text="Submmit" OnClick="btnSubmmit_Click" />
                </div>
           
        </div>
        <asp:Button ID="btnContinuar" runat="server" CssClass="btn btn-destaque" Text="Continuar" OnClick="btnContinuar_Click" />
    </div>
    <script>
        CKEDITOR.replace("<% =txtPergSharp.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
        );
        CKEDITOR.replace("<% =txtPergJS.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
        );
        CKEDITOR.replace("<% =TxtPergPython.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
        );
        CKEDITOR.replace("<% =PergC.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
    </script>
</asp:Content>
