<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePage.aspx.cs" Inherits="Insight.Admin.Content.ManagePage"
    MasterPageFile="~/ArticleMaster.Master" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="PageContent">
<div id="contentdiv1">
    <h4>
        &nbsp;</h4>
        <h1><asp:Label ID="PageTitle" runat="server" Font-Size="Larger" ></asp:Label><p></p><br /></h1>
    <asp:DataList ID="Datalist" runat="server" Width="800px" OnItemCommand="ProcessCommand">
        <HeaderTemplate>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr style="background-color: #424345; color: white;">
                    <td style="width:5%;padding:0 3px; ">
                        ID
                    </td>
                    <td style="width:60%;">
                        Title
                    </td>
                    <td style="width:20%;">
                        Published IN
                    </td>
                    <td style="width:5%;" nowrap>
                        Action
                    </td>
                    <td></td>
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="background-color:#eeeeee">
                <td>                   
                    <asp:Label ID="ArtID" runat="server" Text='<%# Eval("ArticleID") %>' ></asp:Label>
                </td>
                <td>
                    <a href='/ArticleView.aspx?id=<%# Eval("ArticleID") %>&pid=<%#Request.QueryString["pid"] %>'
                        style="text-decoration: none;">
                        <asp:Label ID="ArtTitle" runat="server" Text='<%# Eval("title") %>'></asp:Label></a>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PublishedIN") %>'></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ImageUrl="~/images/up.png" ID="MoveUp" runat="server" CommandName="MoveItUP"
                        CommandArgument='<%# Eval("PageArticleID") %>' ToolTip="Move Up"/>
                    <asp:ImageButton ImageUrl="~/images/down.png" ID="MoveDown" runat="server" CommandName="MoveItDown"
                        CommandArgument='<%# Eval("PageArticleID") %>' ToolTip="Move Down"/>                    
                </td>
                <td style="vertical-align:top;width:1%;"><asp:ImageButton ImageUrl="~/images/eject.png" ID="DeletefromPage" runat="server"
                        CommandName="RemoveFromPage" CommandArgument='<%# Eval("PageArticleID") %>'  ToolTip="Delete from page"/></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
</div>
</asp:Content>
