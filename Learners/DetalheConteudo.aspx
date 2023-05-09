<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalheConteudo.aspx.cs" Inherits="Learners.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container" >
            <div id="pagina">
                <div class="row">
                 <div class="col-2"  >
                <div class="nav nav-pills nav-fill" style="border-color:rgba(45, 132, 119, 0.1); border-style: solid; border-radius:0.70rem; margin-top: 40px; margin-left:1px;" id="v-pills-tab" role="menubar" aria-orientation="horizontal">
                      <a class="nav-item nav-link mb-0 active" id="v-pills-home-tab" data-toggle="pill" href="#home" role="tab" aria-controls="v-pills-home" aria-selected="true" ><h4> Home</h4></a>
                        <a  class="nav-item nav-link mb-0" id="v-pills-profile-tab" data-toggle="pill" href="#sharp" role="tab" aria-controls="v-pills-sprofile" aria-selected="false""><h4>C#</h4></a>
                        <a  class="nav-item nav-link mb-0" id="v-pills-menu-tab" data-toggle="pill" href="#script" role="tab" aria-controls="v-pills-sprofile" aria-selected="false""><h4>JavaScript</h4></a>
                        <a  class="nav-item nav-link mb-0" id="v-pills-settings-tab" data-toggle="pill" href="#python" role="tab" aria-controls="v-pills-settings" aria-selected="false"><h4>Python</h4></a>
                        <a  class="nav-item nav-link mb-0" id="v-pills-switch-tab" data-toggle="pill" href="#C" role="tab" aria-controls="v-pills-settings" aria-selected="false"><h4>C</h4></a>
                </div>
                </div>
                 <div class="col-10">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <div class="col-lg-12">
                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                    <h1><asp:Label ID="lblTitulo" runat="server" Width="100%" ></asp:Label></h1>
                                    </div>
                                            <div class="col-lg-12 resumoConteudo" id="conteudo" runat="server"  >
                                
                                            </div>
                                            
                                    
                                </div>
                            </div>


                        



                        <div class="tab-pane fade" id="sharp" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            <div class="col-lg-12">
                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                    <strong></strong>
                                    </div>
                                            <div class="col-lg-12 resumoConteudo" id="Csharp" runat="server"  >
                                
                                            </div>
                                     
                                          <div id="button-perg">  
                                           <asp:Button ID="btnPergSharp" runat="server" CssClass="btn btn-destaque" Text="Fazer Quiz" OnClick="btnSharp_Click" />
                                    </div>
                                    
                                </div>
                            </div>



                        <div class="tab-pane fade" id="script" role="tabpanel" aria-labelledby="v-pills-menu-tab">
                            <div class="col-lg-12">
                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                    <strong></strong></div>
                                            <div class="col-lg-12 resumoConteudo" id="JS" runat="server" >
                                
                                     </div>
                                    <div id="button-perg">
                                    <asp:Button ID="btnPergScript" runat="server" CssClass="btn btn-destaque" Text="Fazer Quiz" OnClick="btnJS_Click" />
                                    </div>
                                    
                                </div>
                            </div>





                        <div class="tab-pane fade" id="python" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                            <div class="col-lg-12">
                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                                    <strong></strong></div>
                                            <div class="col-lg-12 resumoConteudo" id="Py" runat="server" >
                                
                                            </div>
                                    
                                    <div id="button-perg">
                                   <asp:Button ID="btnPegPython" runat="server" CssClass="btn btn-destaque" Text="Fazer Quiz" OnClick="btnPy_Click" />
                                   </div>
                                     
                                </div>
                            </div>

                        <div class="tab-pane fade" id="C" role="tabpanel" aria-labelledby="v-pills-switch-tab">
                            <div class="col-lg-12">
                                <div style="text-align:center; padding:10px;  margin-bottom: 50px;  width: auto ;border-bottom:solid; border-bottom-color:rgba(0, 0, 0, 0.12) ;">
                               </div>
                                            <div class="col-lg-12 resumoConteudo" id="linguagemc" runat="server"  >
                                
                                            </div>
                                        
                                    <div id="button-perg">
                                       <asp:Button ID="btnPergC" runat="server" CssClass="btn btn-destaque" Text="Fazer Quiz" OnClick="btnC_Click" />
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                   
                <div class="col-lg-12" id="Bt_Voltar">
                    <input  type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
                 </div>
             </div>
            </div>
        </div>
    </div>
    <style>
        #pagina{
            font-family: Arial;
            font-size: large;
            text-align: justify;
        }
        #pagina h1{
            font-family:sans-serif;
            position: center;
        }
        #Bt_Voltar input[type = "button"]{
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
        #Bt_Voltar input[type = "button"]:hover{
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
