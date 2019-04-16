<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Insight.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div id="pcontent">
        <h4>
            &nbsp;</h4>
            <br />
            <table width="100%" border="0" cellpadding="5" cellspacing="5">
            <tr><td colspan="10" style="text-align: center"><h4>Administration Categories</h4>
            </td></tr>
                <tr>
                    <td colspan="10" style="text-align: center">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                       <a href="/Admin/Content/InProgArticles.aspx" style="text-decoration: none;"> <img src="../images/icon-48-article.png" border="0"/><div>Content</div>
                       </a>                        
                    </td>
                    
                    
                    <td style="text-align: center">
                        <a href="/Admin/Content/PortalPagesView.aspx" style="text-decoration: none;">
                            <img src="/images/icon-48-category.png" border="0"/><div>
                            Portal Pages</div></a>
                    </td>                    
                    
                    <td style="text-align: center">
                        <a href="/Admin/Users/Userslist.aspx" style="text-decoration: none;">
                            <img src="/images/icon-48-user.png" border="0" />
                        <div>
                            Users</div></a>
                    </td>
                                        
                </tr>
                
            </table>    <br />
    </div>
    </div></asp:Content>
