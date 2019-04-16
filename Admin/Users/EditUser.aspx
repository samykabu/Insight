<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Insight.Admin.Users.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div id="contentdiv1" >
        <h4>
            &nbsp;</h4>
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
                                First Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="FirstName" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Father Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="FatherName" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FatherName"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Grandfather Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="GrandName" runat="server" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Family Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="FamilyName" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FamilyName"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Login Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="LoginName" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="LoginName"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Password&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="PWD1" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PWD1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Confirm Password&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="PWD2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PWD1"
                                    ControlToValidate="PWD2" ErrorMessage="Password missmatch"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Mobile Number&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="MoilePhone" runat="server" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                                    ControlToValidate="MoilePhone"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Home Number&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="HomeNumber" runat="server" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                Email Address&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="Email1" runat="server" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                User File Qouta</td>
                            <td>
                                <asp:TextBox ID="FolderQouta" runat="server" Width="128px"></asp:TextBox>
&nbsp;in MB</td>
                        </tr>
                        <tr>
                            <td style="width: 1%" nowrap>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 1%; vertical-align: top" nowrap>
                                Permissions&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:CheckBox ID="IsAdmin" runat="server" Text=" Site Administrator" /><br />
                                <asp:CheckBox ID="IsEditor" runat="server" Text=" Content Editor" /><br />
                                <asp:CheckBox ID="SendNotification" runat="server" 
                                Text=" Can Recive Notifications" /><br />
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button Text="Update" ID="CreateBT" runat="server" OnClick="UpdateUser" 
                                     />&nbsp;
                                <asp:Button Text="Cancel" ID="CancelBT" runat="server" OnClick="CancelUpdate" 
                                     CausesValidation="False" style="height: 26px"
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
    </div>
</asp:Content>
