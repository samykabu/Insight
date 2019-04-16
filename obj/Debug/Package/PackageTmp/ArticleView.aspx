<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArticleView.aspx.cs" Inherits="Insight.ArticleView" %>

<%@ Register src="Controls/PageArchive.ascx" tagname="PageArchive" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
</head>
<body>
    <form id="form1" runat="server">
    <div id="site">
        <div id="header">
            <div style="position: absolute; top: 1px; left: 1px; height: 0px; width: 0px; overflow: hidden">
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
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
               <form action="/search.aspx" method="post">
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
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" width="4%">
                                                &nbsp;
                                            </td>
                                            <td colspan="4" valign="top">
                                                <div align="left">
                                                    <table width="660" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                                                        <tr>
                                                            <td width="18">
                                                                <img src="images/goals_top_l2.gif" width="23" height="55">
                                                            </td>
                                                            <td width="640" background="images/goals_top_m2.gif">
                                                                <h2 align="left">
                                                                    <asp:Literal ID="ArticleTitle" runat="server"></asp:Literal>
                                                                </h2>
                                                            </td>
                                                            <td width="20">
                                                                <img src="images/goals_top_r2.gif" width="22" height="55">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td background="images/goals_m1_l.gif">
                                                                &nbsp;
                                                            </td>
                                                            <td width="640" rowspan="2" valign="top">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td colspan="4" class="style13">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="7%">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td width="93%" colspan="3">
                                                                            <p>
                                                                                &nbsp;</p>
                                                                            <div class="style15" align="left">
                                                                               <asp:Literal ID="articleBody" runat="server"></asp:Literal>
                                                                            </div>
                                                                            <p>
                                                                                &nbsp;</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <td background="images/goals_m1_r.gif">
                                                                    &nbsp;
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="18" height="58" valign="bottom" background="images/goals_m1_l.gif">
                                                                <img src="images/goals_m2_l.gif" width="23" height="58">
                                                            </td>
                                                            <td width="20" height="58" valign="bottom" background="images/goals_m1_r.gif">
                                                                <img src="images/goals_m2_r.gif" width="22" height="58">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="18">
                                                                <img src="images/goals_bot_l.gif" width="23" height="41">
                                                            </td>
                                                            <td background="images/goals_bot_m.gif">
                                                                &nbsp;
                                                            </td>
                                                            <td width="20">
                                                                <img src="images/goals_bot_r.gif" width="22" height="41">
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                &nbsp;
                                            </td>
                                            <td colspan="4" valign="top">
                                                <p>
                                                    &nbsp;</p>
                                                <h3 align="left">
                                                    &nbsp;</h3>
                                            </td>
                                        </tr>
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
                                                        <span dir="LTR"></span><uc1:PageArchive ID="PageArchive1" runat="server" />
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
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" class="style2">
            Copyright © 2010 Insight Careers. All rights reserved.         </div>
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
                                <li><a href="Philosophy.html">Philosophy</a>|</li>
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
    </form>
</body>
</html>
