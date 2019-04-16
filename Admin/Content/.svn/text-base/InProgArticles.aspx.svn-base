<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InProgArticles.aspx.cs"
    Inherits="Insight.Admin.Content.InProgArticles" MasterPageFile="~/ArticleMaster.Master" %>
<asp:Content ContentPlaceHolderID="PageContent" runat="server" ID="body">
<div id="contentdiv1">
    <div>
    <div><span>New Article</span><span><asp:ImageButton 
            ImageUrl="/images/add.png" ID="AddArticle" runat="server" 
            onclick="ClickedAddNew" /></span></div>
</div>
<div >
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
   
    
    <asp:DataList ID="InProgressArticles" runat="server" OnItemDataBound="BindImages">  
    <HeaderTemplate>
     <thead style="background-color: #424345; color: white;">
    <td style="width:60%;padding:0 5px " nowrap>Article Title</td>
    <td style="width:25%;padding:0 5px " nowrap>Created In</td>
    <td style="width:14%;padding:0 5px 0 5px;" nowrap>Language</td>
    <td style="width:14%;padding:0 5px 0 5px;" nowrap>Status</td>
    <td  style="width:1%;padding:0 5px 0 5px;" nowrap>Action</td>
    </thead>
    </HeaderTemplate>  
    <ItemTemplate>
    <tr style="background-color:#eeeeee">
    <td style="width:60%;padding:5px 5px " nowrap><%#Eval("Title") %></td>
    <td style="width:25%;padding:5px 5px " nowrap><%#Eval("CreatedIN") %></td>
    <td style="width:14%;padding:0 5px 0 5px;" nowrap><%# ArticleLanguage((long)Eval("LanguageID")) %></td>
    <td style="width:14%;padding:5px 5px 0 5px;" nowrap><%# StatusString((int)Eval("Status"))%></td>
    <td  style="width:1%;padding:5px 5px 0 5px; text-align:center" nowrap>    
    <asp:ImageButton ImageUrl="/images/application_edit.png" ID="EditArticle" runat="server" OnClick="EditArticleBT" />
    <asp:ImageButton ImageUrl="/images/computer_accept.png" ID="stageArticle" runat="server" OnClick="StageArticleBT" />
    <asp:ImageButton ImageUrl="/images/delete.png" ID="DelArticle" runat="server" OnClick="DelArticleBT"/>
    <%--<a href="EditArticle.aspx?id=<%# Eval("PortalArticleID") %>"><img src="../../images/application_edit.png" border=0 alt="edit article" title="Edit article"/></a>
    <a href="StagingArticles.aspx?id=<%# Eval("PortalArticleID") %>" ><img src="../../images/computer_accept.png" border="0" alt="Pulish article" title="Publish Article"/></a>
    <a href="InProgArticles.aspx?did=<%# Eval("PortalArticleID") %>">
            <img src="../../images/delete.png" border=0 alt="Delete article" title="Delete article" /></a>--%>
        </td>
    </tr>    
    </ItemTemplate>
    </asp:DataList>
    </table>
</div>
    </div>
</asp:Content>