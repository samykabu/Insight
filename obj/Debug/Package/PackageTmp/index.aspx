<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Insight.index" %>
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
            $("#featured > ul").tabs({ fx: { opacity: "toggle"} }).tabs("rotate", 12000, true);
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
                <ul class="dropdown dropdown-horizontal" id="nav">
                    <li class="top"><a href="" class="but1 active">
                        <img src="images/spacer.gif" alt="" width="116" height="42" /></a></li>
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
                                <td width="657" valign="top">
                                    <table width="668" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td width="18">
                                                <img src="images/gal_top_l.gif" width="18" height="12">
                                            </td>
                                            <td width="630" background="images/gal_top_m.gif">
                                                <!-- Blank top section -->
                                            </td>
                                            <td width="20">
                                                <img src="images/gal_top_r.gif" width="20" height="12">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="232" background="images/gal_l_t.gif">
                                                &nbsp;
                                            </td>
                                            <td width="630" height="232" bgcolor="#FFFFFF" valign="top">
                                                <div id="featured">
                                                    <ul class="ui-tabs-nav">
                                                        <li class="ui-tabs-nav-item ui-tabs-selected" id="nav-fragment-1">
                                                            <div align="left">
                                                                <a href="#fragment-1">
                                                                    <img src="images/image1-small.jpg" alt="" /><span>Confused about college major?
                                                                    </span></a>
                                                            </div>
                                                        </li>
                                                        <li class="ui-tabs-nav-item" id="nav-fragment-2">
                                                            <div align="left">
                                                                <a href="#fragment-2">
                                                                    <img src="images/image3-small.jpg" alt="" /><span>Is your child the next Picasso?</span></a></div>
                                                        </li>
                                                        <li class="ui-tabs-nav-item" id="nav-fragment-3">
                                                            <div align="left">
                                                                <a href="#fragment-3">
                                                                    <img src="images/image2-small.jpg" alt="" /><span>Find the right job for you</span></a></div>
                                                        </li>
                                                        <li class="ui-tabs-nav-item" id="nav-fragment-4">
                                                            <div align="left">
                                                                <a href="#fragment-4">
                                                                    <img src="images/image4-small.jpg" alt="" /><span>10.5 College Prep</span></a></div>
                                                        </li>
                                                    </ul>
                                                    <!-- First Content -->
                                                    <div id="fragment-1" class="ui-tabs-panel" style="">
                                                        <div align="left">
                                                            <a href="program-career-high.html">
                                                                <img src="images/image1.jpg" alt="" border="0" /></a></div>
                                                        <div class="info">
                                                            <h2 align="left">
                                                                <a href="program-career-high.html">Confused about college major? </a>
                                                            </h2>
                                                            <p class="MsoNormal">
                                                                Insight assists students in finding their careers of passion. We help students select
                                                                their careers themselves by giving them the tools they need through a step by step
                                                                counseling program. The program includes meeting experts in the field and gaining
                                                                acceptance in universities.</p>
                                                            <p align="left">
                                                                &nbsp;</p>
                                                            <p align="right">
                                                                <a href="program-career-high.html" class="style13">More</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- Second Content -->
                                                    <div id="fragment-2" class="ui-tabs-panel ui-tabs-hide" style="">
                                                        <div align="left">
                                                            <a href="program-studentdev.html">
                                                                <img src="images/image3.jpg" alt="" border="0" /></a></div>
                                                        <div class="info">
                                                            <h2 align="left">
                                                                <a href="program-studentdev.html">Is your child the next Picasso?</a></h2>
                                                            <p align="left">
                                                                Insight provides counseling and development services that helps students nurture
                                                                their interests in a productive way thereby helping them in future academic and
                                                                work. Each student will have a tailor made program to help him develop his individual
                                                                passion and talent, while keeping his emotional and developmental needs in mind.
                                                                Through this, insight aims to help the student reach his full potential and beyond. <a href="program-studentdev.html"
                                                                    class="style13">More</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- Third Content -->
                                                    <div id="fragment-3" class="ui-tabs-panel ui-tabs-hide" style="">
                                                        <div align="left">
                                                            <a href="program-career-job.html">
                                                                <img src="images/image2.jpg" alt="" border="0" /></a></div>
                                                        <div class="info">
                                                            <h2 align="left">
                                                                <a href="program-career-job.html">Find the right job for you</a></h2>
                                                            <p align="left">
                                                                Millions of employees worldwide are unhappy in their jobs because they don’t love
                                                                what they do. Insight helps you discover your career of passion and helps you find
                                                                the job you will enjoy doing day after day.
                                                                <p align="left">
                                                                    &nbsp;</p>
                                                                <p align="left">
                                                                    <a href="program-career-job.html" class="style13">More</a>
                                                                </p>
                                                        </div>
                                                    </div>
                                                    <!-- Fourth Content -->
                                                    <div id="fragment-4" class="ui-tabs-panel ui-tabs-hide" style="">
                                                        <div align="left">
                                                            <a href="program-105.html">
                                                                <img src="images/image4.jpg" alt="" border="0" /></a></div>
                                                        <div class="info">
                                                            <h2 align="left">
                                                                <a href="program-105.html">10.5 College Prep</a></h2>
                                                            <p align="left">
                                                                Insight designed a program to give high school students cutting edge, valuable skills
                                                                needed to both enter and excel in college. Courses include: study skills, speed
                                                                reading, SAT/TOEFL prep courses, research skills, negotiation/presentation skills,
                                                                and creative writing.
                                                                <p align="left">
                                                                    &nbsp;</p>
                                                                <p align="left">
                                                                    <a href="program-105.html" class="style13">More</a>
                                                                </p>
                                                        </div>
                                                    </div>
                                                    </br>
                                                </div>
                                            </td>
                                            <td height="232" background="images/gal_r_t.gif">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="18" height="13">
                                                <img src="images/gal_l_m.gif" width="18" height="13">
                                            </td>
                                            <td width="630" background="images/gal_m_m.gif">
                                                <!--Blank bottom section -->
                                            </td>
                                            <td width="20">
                                                <img src="images/gal_r_m.gif" width="20" height="13">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="115" background="images/gal_l_b.png">
                                                &nbsp;
                                            </td>
                                            <td width="630" height="95" valign="top" background="images/gal_mid_bg.png">
                                                <td height="115" background="images/gal_r_b.png">
                                                    &nbsp;
                                                </td>
                                        </tr>
                                        <tr>
                                            <td width="18">
                                                <img src="images/gal_bot_l.gif" width="18" height="13">
                                            </td>
                                            <td width="630" background="images/gal_bot_m.gif">
                                                <!--Blank bottom section -->
                                            </td>
                                            <td width="20">
                                                <img src="images/gal_bot_r.gif" width="20" height="13">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="13">
                                    &nbsp;
                                </td>
                                <td width="298" valign="top">
                                    <div align="center">
                                        <img src="images/logo.gif">
                                    </div>
                                    <table width="272" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td width="8">
                                                <img src="/images/app_top_l1.png" width="8" height="12">
                                            </td>
                                            <td width="256" background="images/app_top_m.gif">
                                                <!-- Blank top section -->
                                            </td>
                                            <td width="8">
                                                <img src="/images/app_top_r1.png" width="8" height="12">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="142" background="images/app_mid_l.gif">
                                                &nbsp;
                                            </td>
                                            <td width="256" height="139" background="images/app_mid.png" valign="top">
                                                <form id="form1" runat="server">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="center">                                                        
                                                            <table width="90%" border="0" align="center" cellpadding="1" cellspacing="4">
                                                                <tr>
                                                                    <td width="49%" class="style2" nowrap>
                                                                        First Name <span class="style4">
                                                                            <asp:RequiredFieldValidator ID="f1v" runat="server" Text="*" ControlToValidate="field1" /></span>
                                                                    </td>
                                                                    <td width="51%" >
                                                                        <asp:TextBox size="26" ID="field1" CssClass="text" Text="" MaxLength="100" maxsize="100"
                                                                            runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style2" nowrap>
                                                                        Last Name<span class="style4">
                                                                            <asp:RequiredFieldValidator ID="f2v" runat="server" Text="* " ControlToValidate="field2" />
                                                                        </span>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox size="26" ID="field2" CssClass="text" Text="" MaxLength="100" maxsize="100"
                                                                            runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style2" nowrap style="text-align:left">
                                                                        Email<span class="style4">
                                                                            <asp:RegularExpressionValidator ID="emv" runat="server" Text="*" ControlToValidate="field3"
                                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><asp:RequiredFieldValidator
                                                                                    ID="f3v" runat="server" Text="* " ControlToValidate="field3" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox size="26" ID="field3" CssClass="text" Text="" MaxLength="100" maxsize="100"
                                                                            runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style2" style="text-align:left">
                                                                         Mobile<span class="style4">
                                                                            <asp:RegularExpressionValidator ID="mobv" runat="server" Text="*" ControlToValidate="field4"
                                                                                ValidationExpression="\d{6,11}" /><asp:RequiredFieldValidator ID="f4v" runat="server"
                                                                                    Text="*" ControlToValidate="field4" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox size="26" ID="field4" CssClass="text" Text="" MaxLength="100" maxsize="100"
                                                                            runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style2" style="text-align:left">
                                                                         Program<span class="style4">
                                                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"
                                                                                ControlToValidate="SelProgram" Operator="NotEqual" ValueToCompare="0">*</asp:CompareValidator></span>
                                                                    </td>
                                                                    <td>                                                                        
                                                                        <label>
                                                                        </label>
                                                                        <asp:DropDownList name="Select your program" CssClass="text" ID="SelProgram" runat="server">
                                                                            <asp:ListItem class="dark" Value="0">List of Programs</asp:ListItem>
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
                                                                        
                                                                    </td>
                                                                </tr>
                                                            </table>                                                        
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            <div align="right">
                                                                <span class="style2 style18">(<span class="style4">*</span>) Reduired Fields </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            <div align="center">
                                                                <asp:ImageButton ImageUrl="/images/register.gif" Width="195" Height="55" runat="server"
                                                                    OnClick="SendReg" />
                                                                    </div>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                                </form>
                                            </td>
                                            <td height="142" background="images/app_mid_r.gif">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="8">
                                                <img src="images/app_bot_l.gif" width="8" height="12">
                                            </td>
                                            <td background="images/app_bot_m.gif">
                                            </td>
                                            <td width="8">
                                                <img src="images/app_bot_r.gif" width="8" height="12">
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
                    <td>
                        <table width="968" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td valign="top">
                                    <table width="494" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td width="8" background="images/news_top_m.gif">
                                                <img src="images/news_top_l.gif" width="8" height="12">
                                            </td>
                                            <td width="432" background="images/news_top_m.gif">
                                            </td>
                                            <td width="8" background="images/news_top_m.gif">
                                                <img src="images/news_top_r.gif" width="8" height="12">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" width="8" height="242" background="images/news_mid_m.gif">
                                                <img src="images/news_mid_l.gif" width="8" height="580">
                                            </td>
                                            <td width="452" height="580" background="images/news_mid_m.gif" valign="top">
                                                <table width="472" border="0" align="left" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td width="79">
                                                            <div align="center">
                                                                <img src="images/ico_news.gif" width="66" height="66"></div>
                                                        </td>
                                                        <td width="353">
                                                            <table width="100%" border="0" align="left" cellpadding="0" cellspacing="3">
                                                                <tr>
                                                                    <td>
                                                                        <h3 align="left">
                                                                            Insight News &amp; Updates
                                                                        </h3>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div align="left">
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <div align="center">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <asp:Repeater ID="articlelist" runat="server">
                                                                        <ItemTemplate>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top" width="21%" rowspan="2">
                                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div align="center">
                                                                                                    <span class="news_month">
                                                                                                        <%# ((DateTime)Eval("PublishedIN")).ToString("MMMM") %></span> <span class="news_year">
                                                                                                            '<%# ((DateTime)Eval("PublishedIN")).ToString("yy") %></span>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div align="center">
                                                                                                    <span class="news_date">
                                                                                                        <%# ((DateTime)Eval("PublishedIN")).ToString("dd") %></span></div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="4%">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td width="65%">
                                                                                    <div class="style6" align="left">
                                                                                        <a href="/ArticleView.aspx?id=<%# Eval("ArticleID") %>">
                                                                                            <%# Eval("Title") %>
                                                                                        </a>
                                                                                    </div>
                                                                                </td>
                                                                                <td width="10%">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td colspan="2" valign="top">
                                                                                    <div align="left">
                                                                                        <span class="style12">
                                                                                            <%# Eval("Description") %>
                                                                                            </a>...</span></div>
                                                                                </td>
                                                                            </tr>
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
                                                                                <td class="style12">
                                                                                    <a href="/ArticleView.aspx?id=<%# Eval("ArticleID") %>">More..</a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <div align="center">
                                                                                        <img src="images/div.gif" width="367" height="20"></div>
                                                                                </td>
                                                                            </tr>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                    <tr>
                                                                        <td>
                                                                            <div align="left">
                                                                                <span class="style12">
                                                                                    <br>
                                                                                    <a href="archive.aspx?dt=1/1/2010">View Archives</a></span></div>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                        <td colspan="2">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <br>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td valign="top" width="8" height="242" background="images/news_mid_r.gif">
                                                <img src="images/news_mid_r.gif" width="8" height="580">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="8">
                                                <img src="images/news_bot_l.gif" width="8" height="12">
                                            </td>
                                            <td background="images/news_bot_m.gif">
                                            </td>
                                            <td width="8">
                                                <img src="images/news_bot_r.gif" width="8" height="12">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="12">
                                    &nbsp;
                                </td>
                                <td width="47%" valign="top">
                                    <table width="448" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td width="8">
                                                <img src="images/news_top_l.gif" width="8" height="12">
                                            </td>
                                            <td width="432" background="images/news_top_m.gif">
                                            </td>
                                            <td width="8">
                                                <img src="images/news_top_r.gif" width="8" height="12">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="242" background="images/news_mid_l.gif">
                                                &nbsp;
                                            </td>
                                            <td width="432" height="337" background="images/news_mid_m.gif" valign="top">
                                                <table width="432" border="0" align="left" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td width="19%">
                                                            <div align="center">
                                                                <img src="images/ico_videos.gif" width="66" height="66"></div>
                                                        </td>
                                                        <td width="81%">
                                                            <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                                                <tr>
                                                                    <td>
                                                                        <h3 align="left">
                                                                            Introduction Video
                                                                        </h3>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div align="left">
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <div align="center">
                                                                <br>
                                                                <object width="480" height="385">
                                                                    <param name="movie" value="http://www.youtube.com/v/tjXq-a2d8Gk&hl=en_US&fs=1&">
                                                                    </param>
                                                                    <param name="allowFullScreen" value="true"></param>
                                                                    <param name="allowscriptaccess" value="always"></param>
                                                                    <embed src="http://www.youtube.com/v/tjXq-a2d8Gk&hl=en_US&fs=1&" type="application/x-shockwave-flash"
                                                                        allowscriptaccess="always" allowfullscreen="true" width="425" height="350"></embed></object></div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td height="242" background="images/news_mid_r.gif">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="8">
                                                <img src="images/news_bot_l.gif" width="8" height="12">
                                            </td>
                                            <td background="images/news_bot_m.gif">
                                            </td>
                                            <td width="8">
                                                <img src="images/news_bot_r.gif" width="8" height="12">
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


                                                         