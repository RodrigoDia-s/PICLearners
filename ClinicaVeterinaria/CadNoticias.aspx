<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="CadNoticias.aspx.cs" Inherits="ClinicaVeterinaria.CadNoticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h1>Conteudo</h1>
        <div class="col-lg-12">
                <label>Titulo:</label>
                <asp:TextBox ID="txtTitulo" runat="server" Width="100%" CssClass="input-block-level" ></asp:TextBox>
            
                <label>Data de Inicio:</label>
                <asp:TextBox ID="txtDtCad" runat="server" TextMode="Date" Width="100%" CssClass="input-block-level" ></asp:TextBox>
            
                </div>

                
            <div class="col-lg-12">
                <br />
            
                <div class="col-lg-12">
        </div>

            <div class="col-lg-12">
                          <label>Resumo:</label>
                <asp:TextBox ID="txtResumo"  runat="server" TextMode="MultiLine" ></asp:TextBox>
       
                </div>
       
            <div class="col-lg-12">
                <label>Descrição:</label>
                <asp:TextBox ID="txtTexto"  runat="server" TextMode="MultiLine" ></asp:TextBox>
                </div>
            </div>
        <div style="margin-top: 20px;">
                <h1>C#</h1>
                <div class="col-lg-12">
               
                <div class="col-lg-12">
                <br />
            
                <div class="col-lg-12">
                 </div>

           
       
                <div class="col-lg-12">
                <label>Texto:</label>
                <asp:TextBox ID="TextBoxSharp"  runat="server" TextMode="MultiLine" ></asp:TextBox>
        
                </div>
                </div>



            



            </div>
        
             <div style="margin-top:20px;">
                <h1>JavaScriprt</h1>
                
                <div class="col-lg-12">
                <br />
            
                <div class="col-lg-12">
                </div>

           
       
                 <div class="col-lg-12">
                <label>Texto:</label>
                 <asp:TextBox ID="TextBoxJS"  runat="server" TextMode="MultiLine" ></asp:TextBox>
        
                </div>
                </div>

                

                 </div>



             <div style="margin-top:20px;">
                <h1>Python</h1>
                <div class="col-lg-12">
                
                <div class="col-lg-12">
                <br />
            
                <div class="col-lg-12">
                </div>

           
       
                 <div class="col-lg-12">
                <label>Texto:</label>
                <asp:TextBox ID="TextBoxPy"  runat="server" TextMode="MultiLine" ></asp:TextBox>
        
                 </div>


                    
                    </div>
             </div>
        <div style="margin-top:20px;">
            <h1>C</h1>
                <div class="col-lg-12">
                
                    <div class="col-lg-12">
                <br />
            
                <div class="col-lg-12">
                  </div>

           
            
                 <div class="col-lg-12">
                <label>Texto:</label>
                <asp:TextBox ID="TextBoxC"  runat="server" TextMode="MultiLine" ></asp:TextBox>
        
                 </div>

                


                </div>
                
            </div>
                 <div class="Col-lg-12">
                <div class="text-center">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-destaque" Text="Salvar" OnClick="btnSalvar_Click" /><asp:Button ID="btnCancelar"  CssClass="btn btn-destaque2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
            </div>
            </div>
        
               
            
            <asp:CustomValidator ID="Validator1" runat="server" ErrorMessage="" Display="Dynamic" OnServerValidate="Validator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>        
    
     
          </div>
		<script>
            CKEDITOR.replace("<% =txtTexto.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
            CKEDITOR.replace("<% =TextBoxSharp.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
            CKEDITOR.replace("<% =TextBoxJS.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
            CKEDITOR.replace("<% =TextBoxPy.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
            CKEDITOR.replace("<% =TextBoxC.ClientID %>",
                {
                toolbar: 'Full',
                entities: false,
                basicEntities: false
                }
            );
            CKEDITOR.replace("<% =txtResumo.ClientID %>",
                {
                    toolbar: 'Full',
                    entities: false,
                    basicEntities: false
                }
            );
		</script>
</asp:Content>
