<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Insight.Login" MasterPageFile="~/ArticleMaster.Master"%>
<%@ Register src="Controls/LoginControl.ascx" tagname="LoginControl" tagprefix="uc1" %>

<asp:Content ID="pagecont" runat="server" ContentPlaceHolderID=PageContent>

    <uc1:LoginControl ID="LoginControl1" runat="server" />

</asp:Content>