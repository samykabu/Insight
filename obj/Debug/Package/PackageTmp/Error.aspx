<%@ Page Title="" Language="C#" MasterPageFile="~/ArticleMaster.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Insight.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
<div id="contentdiv" >
    <table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="20" height="20" bgcolor="#EEEEEE">
                <img src="images/table_up_l.gif" width="20" height="20" />
            </td>
            <td height="20" bgcolor="#EEEEEE">
                &nbsp;
            </td>
            <td width="20" height="20" bgcolor="#EEEEEE">
                <img src="images/table_up_r.gif" width="20" height="20" />
            </td>
        </tr>
        <tr>
            <td valign="top" bgcolor="#EEEEEE">
                &nbsp;
            </td>
            <td valign="top" bgcolor="#EEEEEE">
                <div id="errortext">
                    <h1 align="center"><asp:Literal ID="ErrorTitle" runat="server"></asp:Literal>                        
                    </h1>
                    <errorh2 class="title">
  <div align="center"><asp:Literal ID="ErrorDescription" runat="server"></asp:Literal> </div>
</errorh2>
                    <p align="center" class="title">
                        &nbsp;</p>
                    <p align="center">
                        <asp:Literal ID="ErrorCause" runat="server"></asp:Literal>
                    </p>
                    <p align="center">
                        <asp:Literal ID="ErroTrialMsg" runat="server"></asp:Literal>
                    </p>
                </div>
            </td>
            <td bgcolor="#EEEEEE">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="20" height="20">
                <img src="images/table_dn_l.gif" width="20" height="20" align="absbottom" />
            </td>
            <td height="20" bgcolor="#EEEEEE">
                &nbsp;
            </td>
            <td width="20" height="20">
                <img src="images/table_dn_r.gif" width="20" height="20" align="absbottom" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
