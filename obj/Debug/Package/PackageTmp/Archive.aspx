﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" Inherits="Insight.Archive" %>

<%@ Register Src="Controls/PageArchive.ascx" TagName="PageArchive" TagPrefix="uc1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Insight Careers</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Welcome to Insight Careers, discover your passion.. witness your success" />
    <link rel="icon" href="favicon.ico" type="image /x-icon" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.6.custom.min.js"></script>
    <script type="text/javascript" src="js/stuHover.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#featured > ul").tabs({ fx: { opacity: "toggle"} }).tabs("rotate", 5000, true);
        });
    </script>
    <!--[if IE]>
  <link rel="stylesheet" type="text/css" href="style-ie.css" />
<![endif]-->
    <style type="text/css">
<!--
.style18 {font-size: 24px}
-->
</style>
</head>

<body>
    <div id="site">
        <div id="header">
            <div style="position: absolute; top: 1px; left: 1px; height: 0px; width: 0px; overflow: hidden">
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="23%">
                        &nbsp;
                    </td>
                    <td width="62%">
                        &nbsp;
                    </td>
                    <td width="15%">
                    </td>
                </tr>
            </table>
            <div id="menu">
                <ul class="dropdown dropdown-horizontal">
                    <li class="top"><a href="index.aspx" class="but1">
                        <img src="images/spacer.gif" alt="" width="116" height="42" border="0" /></a></li>
                    <li class="top"><a href="about.html" class="but2">
                        <img src="images/spacer.gif" alt="" width="118" height="42" border="0" /></a></li>
                    <li class="dir"><a href="programs.html" class="but3">
                        <img src="images/spacer.gif" alt="" width="122" height="42" border="0" /></a></li>
                    <li class="top"><a href="media.aspx" class="but4">
                        <img src="images/spacer.gif" alt="" width="121" height="42" border="0" /></a></li>
                    <li class="top"><a href="philosophy.html" class="but5">
                        <img src="images/spacer.gif" alt="" width="119" height="42" border="0" /></a></li>
                    <li class="top"><a href="contact.html" class="but6">
                        <img src="images/spacer.gif" alt="" width="129" height="42" border="0" /></a></li>
                </ul>
                <form action="Search.aspx" method="post">
                    <input type="text" value="Search" />
                </form>
            </div>
        </div>
        <div id="content" align="center">
            <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="968" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="71%" valign="top">
                                    <img src="images/Archive.jpg" width="686" height="300">
                                </td>
                                <td width="5">
                                    &nbsp;
                                </td>
                                <td width="272" valign="top">
                                    <div align="center">
                                        <p>
                                            <a href="index.aspx">
                                                <img src="images/logo.gif" border="0"></a></p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            <a href="register.aspx">
                                                <img src="images/register.gif" width="195" height="55" border="0"></a>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table width="960" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="12" valign="top">
                                </td>
                                <td width="665" valign="top">
                                    <table width="99%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td colspan="5">
                                                <h3 align="left">
                                                    Archives <span class="style3">of &quot;</span><span class="style17"><asp:Literal
                                                        ID="MonthName" runat="server"></asp:Literal></span> <span class="style3">&quot;
                                                    </span>
                                                </h3>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                            </td>
                                        </tr>
                                        <asp:Repeater ID="articlelist" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td valign="top" width="4%">
                                                        &nbsp;
                                                    </td>
                                                    <td colspan="4" valign="top">
                                                        <div align="left">
                                                            <span class="style13"><span class="news_month"><strong>-</strong></span>
                                                                <%# Eval("Title") %>
                                                            </span>
                                                        </div>
                                                        <div class="style6" align="left">
                                                            <div align="left">
                                                                <p>
                                                                    <%# Eval("Description") %>....</p>
                                                                <p class="style17">
                                                                    <a href="/ArticleView.aspx?id=<%# Eval("ArticleID") %>">Read more</a></p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top">
                                                        &nbsp;
                                                    </td>
                                                    <td colspan="4" valign="top">
                                                        <div align="center">
                                                            <img src="images/div.gif" width="222" height="20"></div>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <tr>
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="12" valign="top">
                                </td>
                                <td valign="top" width="275">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td colspan="5">
                                                <h3 align="center">
                                                    <a href="programs.html">Browse Archives </a>
                                                </h3>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                <div align="center">
                                                    <img src="images/div.gif" width="258" height="20"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" width="4%">
                                                &nbsp;
                                            </td>
                                            <td colspan="4" valign="top">
                                                <div align="left">
                                                    <span class="style13">2010</span>
                                                </div>
                                                <div class="style6" align="left">
                                                    <div align="left">
                                                        <span dir="LTR"></span>
                                                        <uc1:PageArchive ID="PageArchive1" runat="server" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" class="style2">
            Copyright © 2010 Insight Careers. All rights reserved.
        </div>
        <p>
            &nbsp;</p>
        <table width="988" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="48">
                    <img src="images/footer_l.gif">
                </td>
                <td width="955" background="images/footer_m.gif">
                    <div id="navigation">
                        <div align="right">
                            <ul>
                                <li><a href="index.aspx">Home</a>|</li>
                                <li><a href="about.html">About us</a>|</li>
                                <li><a href="programs.html">Programs</a>|</li>
                                <li><a href="media.aspx">Media</a>|</li>
                                <li><a href="philosophy.html">Philosophy</a>|</li>
                                <li><a href="contact.html">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                </td>
                <td height="48">
                    <img src="images/footer_r.gif">
                </td>
            </tr>
        </table>
</body>
</html>
