<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="FindArticle.aspx.cs" Inherits="Insight.Admin.Content.FindArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div id="contentdiv1" >
<div>
    <h4>
        &nbsp;</h4>
    <table width="100%">
<tr><td style="width:1%" nowrap>Article Title</td><td>
    <asp:TextBox ID="ArticleTitle" runat="server" Width="424px"></asp:TextBox></td></tr>
    
<tr><td></td><td><asp:Button Text="Find" ID="FindBT" runat="server" OnClick="FindArticleBt" />
    <asp:Button Text="Cancel" ID="CancelBT" runat="server" OnClick="CancelBTEv" 
         /></td></tr>        
    <tr>
        <td>
        </td>
        <td>
            <asp:Literal ID="errormsg" runat="server" />
        </td>
    </tr>
</table>
</div>

<asp:DataList ID="articleList" runat=server Width="100%">
    <HeaderTemplate>
    <table width="100%" border="0" cellpadding="0" cellspacing="0"><tr style="background-color: #424345; color: white;">
    <td style="width:80%; padding-left:5px">Title</td><td>Action</td></tr>
    </HeaderTemplate>
    <ItemTemplate>
    <tr style="background-color:#eeeeee">
    <td>
        <%# Eval("title") %>
    </td>
    <td>
        <a href="/Admin/Content/StagingArticles.aspx?id=<%# Eval("PortalArticleID") %>" >Publish</a>
    </td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
</asp:DataList>
</div>
</asp:Content>
