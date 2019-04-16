<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YoutubeContainer.ascx.cs" Inherits="Insight.Controls.YoutubeContainer" %>
<object width="480" height="385">
    <param name="movie" value="http://www.youtube.com/v/kMjWTR5Q96M&hl=en_US&fs=1&">
    </param>
    <param name="allowFullScreen" value="true"></param>
    <param name="allowscriptaccess" value="always"></param>
    <asp:Literal ID="emb" runat="server"></asp:Literal></embed></object>