<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="Insight.Controls.LoginControl" %>
<asp:Panel ID="poll" runat="server" >
    <div id="contentdiv1">
        <h4>
            &nbsp;</h4>
<div id="poll" style="float:none; width:100%;">
    <b class="poll"><b class="poll1"><b></b></b><b class="poll2"><b></b></b><b class="poll3">
    </b><b class="poll4"></b><b class="poll5"></b></b>
    <div class="pollfg">
        <ul>
            <li>
                <h2>
                    Login</h2>
                <ul>
                    <li>
                        <asp:Label ID="Label3" runat="server" Width="80">User ID</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></li>
                    <li>
                        <asp:Label ID="Label4" runat="server" Width="80">Password</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></li>                  
                        <asp:Panel ID="errorpanel" runat="server" Visible="false">
                            <li><font color="red"> Invalid Login ID/Password</font>
                                </li>
                        </asp:Panel>
                </ul>
            </li>
            <h4 class="pollact" >                
            <asp:Button ID="login" runat="server" Text="Submit" />   </h4>            
        </ul>
    </div>
    <b class="poll"><b class="poll5"></b><b class="poll4"></b><b class="poll3"></b><b
        class="poll2"><b></b></b><b class="poll1"><b></b></b></b>
</div>   
</div>
</asp:Panel>

<asp:Panel ID="loggedin" runat="server" Visible="false">
    <div id="Div1">
        <h4>
            &nbsp;</h4>
    <div id="poll">
        <b class="poll"><b class="poll1"><b></b></b><b class="poll2"><b></b></b><b class="poll3">
        </b><b class="poll4"></b><b class="poll5"></b></b>
        <div class="pollfg" style="padding:0 0 0 10px;">
               welcome <asp:Literal ID="uName" runat="server"></asp:Literal></h2>                              
        </div>
        <b class="poll"><b class="poll5"></b><b class="poll4"></b><b class="poll3"></b><b
            class="poll2"><b></b></b><b class="poll1"><b></b></b></b>
    </div>
    </div>
</asp:Panel>
