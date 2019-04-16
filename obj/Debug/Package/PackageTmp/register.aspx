<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Insight.register" %>

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
                                    <img src="images/Search-Page.jpg" width="686" height="300">
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
                                            <a href="register.aspx"></a>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                   <!---- form goes here --->
                        <form id="form1" runat="server">
                        <table width="960" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="12" valign="top">
                                </td>
                                <td align="center" valign="top">
                                    <table width="50%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="59%" class="style13">
                                                <p align="left">
                                                    Full Name
                                                </p>
                                            </td>
                                            <td width="41%" class="style13">
                                                <div align="left">
                                                    الاسم بالعربية
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div align="left">
                                                    <span class="style13">
                                                        <asp:TextBox  runat=server size="26" name="fname" class="textreg" value="" id="fname"
                                                            maxlength="100" maxsize="100" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="fname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <div align="left">
                                                    <span class="style13">
                                                    <asp:TextBox  runat=server size="26" name="arfname" class="textreg" value="" id="arfname"
                                                            maxlength="100" maxsize="100" />                                                        
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="arfname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <p align="left">
                                                    &nbsp;</p>
                                            </td>
                                            <td class="style13">
                                                <div align="left">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <div align="left">
                                                    Email Address
                                                </div>
                                            </td>
                                            <td class="style13">
                                                <div align="left">
                                                    Mobile</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div align="left">
                                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="59%" class="style13">
                                                                <div align="left">
                                                                <asp:TextBox  runat=server size="26" name="emailtxt" class="textreg" value="" id="emailtxt"
                                                            maxlength="100" maxsize="100" />
                                                    <span class="style13">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                        ControlToValidate="emailtxt" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </span>
                                                                </div>
                                                            </td>
                                                            <td width="41%" class="style13">
                                                                <asp:TextBox  runat=server size="26" name="mobiletxt" class="textreg" value="" id="mobiletxt"
                                                            maxlength="100" maxsize="100" />
                                                    <span class="style13">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                    ControlToValidate="mobiletxt" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" class="style13">
                                                                <div align="left">
                                                                    Program Type
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" class="style13">
                                                                <div align="left">
                                                                <asp:DropDownList ID=SelProgram runat=server class="textreg">
                                                                    <asp:ListItem class="dark" Enabled=false>List of Programs</asp:ListItem>                                                                        
                                                                    <asp:ListItem Value="Student Development">Student Development</asp:ListItem>
                                                                    <asp:ListItem Value="Career Counseling Highschool">Career Counseling Highschool</asp:ListItem>
                                                                    <asp:ListItem Value="Career Counseling College">Career Counseling College</asp:ListItem>
                                                                    <asp:ListItem Value="Career Counseling Employees">Career Counseling Employees</asp:ListItem>
                                                                    <asp:ListItem Value="Bridges Abroad">Bridges Abroad</asp:ListItem>
                                                                    <asp:ListItem Value="10.5 (college prep modules)">10.5 (college prep modules)</asp:ListItem>
                                                                    <asp:ListItem Value="Insight Trips">Insight Trips</asp:ListItem>
                                                                    <asp:ListItem Value="School Consultancy/Recruitment">School Consultancy/Recruitment</asp:ListItem>
                                                                    <asp:ListItem Value="HR Consultancy/Recruitment">HR Consultancy/Recruitment</asp:ListItem>
                                                                </asp:DropDownList>
                                                    <span class="style13">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                        ControlToValidate="SelProgram" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center">
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <p>
                                                    &nbsp;</p>
                                                <p>
                                                    &nbsp;</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div align="center">
                                                    <asp:ImageButton ImageUrl="images/register.gif" width="195" height="55" OnClick="SendReg" runat=server /></div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
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
