<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StagingArticles.aspx.cs"
    Inherits="Insight.Admin.Content.StagingArticles" MasterPageFile="~/ArticleMaster.Master" %>

<asp:Content ID="contentdiv" runat="server"  ContentPlaceHolderID="PageContent">
    <div id="contentdiv1">
    <asp:DataList runat="server" ID="Datalist" Width="100%"  
       onitemdatabound="checkPage">
<HeaderTemplate>
 
<table width="100%">
<tr style="background-color: #424345;color:white;"><td nowrap style="width:1%"></td><td>Page Name</td></tr>
</HeaderTemplate>
<ItemTemplate>
    <tr >
        <td><asp:ImageButton ID="PulishAction" runat=server CommandName="ChangeState" OnCommand="ChnagePageTarget" />
        </td>        
        <td>
            <asp:Label ID="pageid" runat="server" Text='<%# Eval("portalpageid") %>' Visible="false"></asp:Label>
            <asp:Label ID="pagename" runat="server" Text='<%# Eval("title") %>'></asp:Label>
        </td>
        
    </tr>
</ItemTemplate>
<FooterTemplate>
<tr><td>
    </td><td><asp:Button ID="saveit" runat="server" OnClick="PublishArticelDone" Text="Done" /><asp:Button ID="cancelbt" runat="server" OnClick="cancelbtenv" Text="Cancel" /></td>
    <td>
    </td>    
    </tr>
</table>
</FooterTemplate>
</asp:DataList>
</div>
</asp:Content>