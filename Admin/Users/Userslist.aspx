<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="Userslist.aspx.cs" Inherits="Insight.Admin.Users.Userslist" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div id="contentdiv1" >
        <h4>
            &nbsp;</h4>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr><td><asp:Button ID="newuser" runat="server" Text="Add User" 
                    onclick="newuser_Click" /> </td></tr>
            </table>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:DataList ID="UsersAcounts" runat="server" Width="100%">
        <HeaderTemplate>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <thead style="background-color: #424345; color: White">
                    <td style="width: 40%; padding-left: 5px;">
                        User Name
                    </td>
                    <td style="width: 20%">   
                    Email                     
                    </td>       
                    <td style="width: 10%">
                    Phone
                    </td>
                    <td style="width: 30%">
                        Role
                    </td>
                    <td style="width: 20%">
                        
                    </td>
                </thead>
        </HeaderTemplate>
    <ItemTemplate>
        <tr style="background-color:#eeeeee">
            <td nowrap style="padding-left: 5px">
                <%# Eval("Fname") + " " + Eval("LName")%>
            </td>
            <td nowrap>
                <%# Eval("Email")%>
            </td>
            <td nowrap>
                <%# Eval("Mobile1")%>
            </td>
            <td >
                <%# userRole(Eval("SecurityRoles"))%>
            </td>
            <td nowrap>
                <asp:ImageButton ImageUrl="~/images/user_edit.png" ID="EditUserIBT" runat="server"
                    OnCommand="DeleteUser" CommandName="edituser" CommandArgument='<%# Eval("ProfileID") %>' />
                <asp:ImageButton ImageUrl="~/images/delete.png" ID="deleteuser" runat="server" OnCommand="DeleteUser"
                    CommandName="DeleteUser" CommandArgument='<%# Eval("ProfileID") %>' />
                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="deleteuser"
                                ConfirmText="Are You Sure?" DisplayModalPopupID="ModalDelPopupExtender1">
                            </asp:ConfirmButtonExtender>
                            <asp:ModalPopupExtender ID="ModalDelPopupExtender1" runat="server" TargetControlID="deleteuser"
                                OkControlID="btnYes" BackgroundCssClass="modalBackground" PopupControlID="pnlDdelPopup"
                                CancelControlID="btnNo">
                            </asp:ModalPopupExtender>                    
                    
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
    </asp:DataList>
      </ContentTemplate>
    </asp:UpdatePanel>
     <asp:Panel ID="pnlDdelPopup" runat="server" CssClass="confirm-dialog" Style="display: none;">
            <div class="inner">
                <h2>
                    Are you sure you want to delete this user?</h2>
                <div class="base">
                    <asp:Button ID="btnYes" runat="server" Text="Yes" />
                    <asp:Button ID="btnNo" runat="server" Text="No" />
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
