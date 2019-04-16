<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="TranslateArticle.aspx.cs" Inherits="Insight.Admin.Content.TranslateArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div id="contentdiv1" >
        <h4>
            &nbsp;</h4>
            
            <asp:Panel ID="CreateArticlePanel" runat="server" Visible="false">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="20" height="20" bgcolor="#EEEEEE">
                    <img src="/images/table_up_l.gif" width="20" height="20" />
                </td>
                <td height="20" colspan="3" bgcolor="#EEEEEE">
                    &nbsp;
                </td>
                <td width="20" height="20" bgcolor="#EEEEEE">
                    <img src="/images/table_up_r.gif" width="20" height="20" />
                </td>
            </tr>
            <tr>
                <td width="20" height="20" bgcolor="#EEEEEE">                    
                </td>
                <td height="20" colspan="3" bgcolor="#EEEEEE">
                    <table width="100%" border="0">
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;Language</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True" Value="true">English</asp:ListItem>                                    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;Article Title&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="ArticleTitle" runat="server" Width="424px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button Text="Create" ID="CreateBT" runat="server" OnClick="CreateArticel"  />&nbsp;
                                <asp:Button Text="Cancel" ID="CancelBT" runat="server" OnClick="CancelBTEv" 
                                     />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Literal ID="errormsg" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="20" height="20" bgcolor="#EEEEEE">                    
                </td>
            </tr>
            <tr>
                <td width="20" height="20">
                    <img src="/images/table_dn_l.gif" width="20" height="20" align="absbottom" />
                </td>
                <td height="20" colspan="3" bgcolor="#EEEEEE">
                    &nbsp;
                </td>
                <td width="20" height="20">
                    <img src="/images/table_dn_r.gif" width="20" height="20" align="absbottom" />
                </td>
            </tr>
        </table>      
            </asp:Panel>

    </div>
</asp:Content>
