<%@ Page Language="C#"  ValidateRequest="false" MasterPageFile="~/TelerikArticleMaster.Master" AutoEventWireup="true" CodeBehind="ArticleEditor.aspx.cs" Inherits="Insight.Admin.Content.ArticleEditor" Title="Untitled Page" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 135px;
            color:Black;
            text-align:left;            
        }
        .style2
        {
            width: 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
 <div id="contentdiv">
    <h4>
    </h4>
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server"  Width="100%">
     <div>
                <div id="SectionName">
                    </div>
                <div>
                    <table width="800px" cellpadding="0" cellspacing="0"  style="margin:0 0 10px 20px;">
                        <tr>
                            <td nowrap class="style1">
                                Title
                            </td>
                            <td style="text-align:left">
                                <asp:TextBox ID="ArticleTitle" runat="server" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top;" class="style1">
                                Description</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="ArticleDescription" runat="server" Width=600
                                    Height="60px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" >
                                <table width="100%" style="margin-left:120px;" >
                                    <tr>                                       
                                        <td style="vertical-align: top;width:100%;">   
                                            <telerik:RadEditor ID="RadEditor1" runat="server" EditModes="Design" 
                                                BackColor="White" ContentFilters="encodescripts" Height="800px" ContentAreaCssFile="style.css">
                                                <CssFiles>
       <telerik:EditorCssFile Value="~/EditorContentArea.css" />
   </CssFiles>

                                                <MediaManager DeletePaths="/ArticleIMG" UploadPaths="/ArticleIMG" ViewPaths="/ArticleIMG"
                                                    MaxUploadFileSize="20480000" />
                                                <SilverlightManager DeletePaths="/ArticleIMG" MaxUploadFileSize="20480000" 
                                                    UploadPaths="/ArticleIMG" ViewPaths="/ArticleIMG" />
                                                <DocumentManager DeletePaths="/ArticleIMG" MaxUploadFileSize="2048000" 
                                                    UploadPaths="/ArticleIMG" ViewPaths="/ArticleIMG" />
                                                <FlashManager DeletePaths="/ArticleIMG" MaxUploadFileSize="2048000" 
                                                    UploadPaths="/ArticleIMG" ViewPaths="/ArticleIMG" />
                                                <Content>
</Content>
                                                <ImageManager DeletePaths="/ArticleIMG" UploadPaths="/ArticleIMG" 
                                                    ViewPaths="/ArticleIMG" MaxUploadFileSize="2048000" />
                                            </telerik:RadEditor>                                                                                   
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td>            
                                <h4>
                                    &nbsp;</h4>                    
                                    <asp:Button ID="SaveOperation" runat="server" Text="Save" 
                                    OnClick="Saven_Click"  />&nbsp;
                                <asp:Button ID="PostArticle" runat="server" Text="Post Article" OnClick="PostArticle_Click"
                                     />&nbsp;<asp:Button
                                        ID="Button1" runat="server" Text="Cancel"  OnClick="cancelOperation_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
    </telerik:RadAjaxPanel>
    </div>
</asp:Content>
