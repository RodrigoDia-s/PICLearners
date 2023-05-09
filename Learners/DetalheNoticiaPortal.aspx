<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalheNoticiaPortal.aspx.cs" Inherits="Learners.DetalheNoticiaPortal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container"  >
        <div style="display: inline-block;">
        <div class="col-lg-12 tituloNoticia"  style=" font-family: sans-serif; font-weight:300; text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
            <h1 style="font-family: arial;"><asp:Label ID="lblTitulo" runat="server" Width="100%" ></asp:Label></>
         </div>
        <div class="col-lg-12" style=" ">
            <asp:Image ID="ImgNoticia" Width="25%" Height="25%" runat="server"  />
            </div>
        <div class="col-lg-12 resumoNoticia" id="noticia" runat="server" style="display:inline-block; padding-top: 20px; text-align: justify; font-family: Arial; font-size:medium; " >
                                
                                            </div>
        <div class="col-lg-12">
        <input type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
        </div>
            </div>
        </div>
</asp:Content>
