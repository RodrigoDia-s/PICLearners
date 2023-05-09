<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Questionario.aspx.cs" Inherits="Learners.Questionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <div class="container"  style="margin: 0 auto; width:1000px;">
        
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                  <table style="width:100%">

                      <tr>
                        <td>
                            <table style="width:100%;">
                                <td style="float:right; background-color: black;"><b><span id="lbresult"></span></b></td>

                            </table>
                        </td>
                      </tr>


                      <tr>
                          <td>
                            <asp:GridView ID="grdquestions" runat="server" AutoGenerateColumns="false" OnRowDataBound="grdquestions_RowDataBound" DataKeyNames="Id_Perg_sharp" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="Questionário">
                                        <ItemTemplate>
                                            <table class="tableclass" id='<%#Eval("Id_Perg_sharp") %>''>
                                                <tr>
                                                    <td><b><%#Eval("Enunciado")%></b>
                                                        <asp:HiddenField ID="hdnquestionId" runat="server"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                         <table>
                                                             <tr>
                                                                 <td>
                                                                     <table class="tblOptions">
                                                                         <tr>
                                                                             <td>
                                                                                 <asp:RadioButton ID="rdOption1" runat="server" Text=' <%#Eval("alt_err1")%>' GroupName="rdexam" />
                                                                             </td>

                                                                         </tr>
                                                                          <tr>
                                                                             <td>
                                                                                 <asp:RadioButton ID="rdOption2" runat="server" Text=' <%#Eval("alt_err2")%>' GroupName="rdexam"/>
                                                                             </td>

                                                                         </tr>
                                                                          <tr>
                                                                             <td>
                                                                                 <asp:RadioButton ID="rdOption3" runat="server" Text=' <%#Eval("alt_err3")%>' GroupName="rdexam"/>
                                                                             </td>

                                                                         </tr>
                                                                          <tr>
                                                                             <td>
                                                                                 <asp:RadioButton ID="rdOption4" runat="server" Text=' <%#Eval("alt_err4")%>' GroupName="rdexam"/>
                                                                             </td>

                                                                         </tr>
                                                                          <tr>
                                                                             <td>
                                                                                 <asp:Label ID="lbquestionstatus" runat="server" Text=""/>
                                                                             </td>

                                                                         </tr>
                                                                         <tr>
                                                                             <td class="correctAnswer"> A resposta correta é:  
                                                                                 <asp:Label ID="lblAnswer" runat="server" Text=' <%#Eval("alt_cert")%>' Visible="false"></asp:Label>
                                                                             </td>
                                                                         </tr>

                                                                     </table>


                                                                 </td>
                                                             </tr>
                                                         </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>

                          </td>

                      </tr>


                      <tr>
                          <td>
                              <asp:Button ID="btnSubmit" runat="server" Text="Submit" cssClass="btn" OnClick="btnSubmitClick"/><asp:Button ID="btnContinuar" runat="server" Text="Continuar" cssClass="btn" OnClick="btnContClick" Visible="false"/>
                          </td>
                               

                      </tr>

                  </table>
              </ContentTemplate>
          </asp:UpdatePanel>
            <input type="button" value="Voltar" class="btn btn-destaque" onClick="history.go(-1)">
        </div>
        
    <style>
        .border
        {
            border-color: red;
            border-width: 2px;
            border-style: solid;
            width: 100%;
        }
        .correctAnswer{
            display: none;
            width: 950px!important;

        }
        .tblOptions{
            width:100%;
        }
        .btn
        {
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
        .btn:hover{
             background: rgb(23,122,101);
             color:white;
        }
        .btndisabled{
             display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid rgb(23,122,101);
            padding: 14px 40px;
            width: 200px;
            outline: none;
            background: #bdb3bd;
            color: #ffffff;
            cursor:none;
             border-radius: 24px;
        }
    </style>
</asp:Content>
