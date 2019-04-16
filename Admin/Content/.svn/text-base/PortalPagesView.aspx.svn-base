<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PortalPagesView.aspx.cs"
    Inherits="Insight.Admin.Content.PortalPagesView" MasterPageFile="~/ArticleMaster.Master" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="PageContent">
    <div id="contentdiv1">
    
        <asp:DataList ID="Datalist" runat="server" Style="float: left; text-align: left;" width="100%">
            <HeaderTemplate>
               <div id="sideprof" style="float:left; text-align:left;">
    <ul>
        <li>
            <h2>
               Page Name<a href="#"></a></h2>
            <ul>
            </HeaderTemplate>
            <ItemTemplate>
                                       
                        <li><a href='ManagePage.aspx?pid=<%# Eval("portalpageid") %>'><asp:Label ID="pagename" runat="server" Text='<%# Eval("title") %>'></asp:Label></a>
                        <asp:Label ID="pageid" runat="server" Text='<%# Eval("portalpageid") %>' Visible="false"></asp:Label>
                </li>
            </ItemTemplate>
            <FooterTemplate>                
               </ul>            
        </li>
      </ul>
      </div>
            </FooterTemplate>
        </asp:DataList>
        <br />
    <asp:Button ID="repu" runat=server OnClick="repub" Text="Re-Publish article"/>
    <br />
    </div>
   </asp:Content>
