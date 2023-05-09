<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="AlterarNoticias.aspx.cs" Inherits="ClinicaVeterinaria.AlterarNoticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <script src="Scripts/jquery.mask.min.js"></script>
   
    <div class="container">
    <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
        <strong><h1 style="font-family: sans-serif; font-weight:300;">Alterar Wiki</h1></strong>
     </div>
        <div class="col-lg-12">
                <div class="col-lg-12">
                <asp:FileUpload ID="FileUpload1" Width="100%" runat="server" />
                     <div class="col-lg-12">
                <label>Titulo:</label>
                <asp:TextBox ID="txtTitulo" runat="server" Width="100%" CssClass="input-block-level" ></asp:TextBox>
            
                <label>Data de Inicio:</label>
                <asp:TextBox ID="txtDtCad" runat="server"  Width="100%" CssClass="input-block-level" ></asp:TextBox>
            
                </div>

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
                <label>Texto:</label>
    <asp:TextBox ID="txtTexto"  runat="server" TextMode="MultiLine" ></asp:TextBox>
        
    </div>
                </div>
            <div class="Col-lg-12">
                <div class="text-center">
        <asp:Button ID="btnAlterar" runat="server" CssClass="btn btn-destaque" Text="Salvar" OnClick="btnAlterar_Click" /><asp:Button ID="btnCancelar"  CssClass="btn btn-destaque2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
            </div>
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

            CKEDITOR.replace("<% =txtResumo.ClientID %>",
                {
                    toolbar: 'Full',
                    entities: false,
                    basicEntities: false
                }
            );

            $('#<%= txtDtCad.ClientID %>').mask("99/99/9999");

		</script>
</asp:Content>
