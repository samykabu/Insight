using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Text.RegularExpressions;

namespace Insight.Admin.Content
{
    public partial class ArticleEditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }


            if (Request.QueryString["id"] == null)
                Server.Transfer("InProgArticles.aspx");
            else
            if (!IsPostBack)
            {
                PortalArticle pa = new PortalArticle(long.Parse(Request.QueryString["id"]));
                ArticleTitle.Text = pa.Title;
                ArticleDescription.Text = pa.Description;
                RadEditor1.Content = pa.RawBody;
            }                
        }
        protected void Saven_Click(object sender, EventArgs e)
        {
            PortalArticle pa = new PortalArticle(long.Parse(Request.QueryString["id"]));
            pa.Title = ArticleTitle.Text;
            pa.RawBody = RadEditor1.Content;

            if (ArticleDescription.Text.Trim().Length > 0)
                pa.Description = ArticleDescription.Text;
            else
                pa.Description = ProcessDescription(pa.RawBody);

            pa.LastEditedIn = DateTime.Now;
            pa.Update();
            if (pa.Status == 0)
                Response.Redirect("InProgArticles.aspx", false);
            else
            {
                Response.Redirect("/ArticleView.aspx?id=" + pa.PortalArticleID.ToString(), false);
            }
        }
        protected void cancelOperation_Click(object sender, EventArgs e)
        {
            Response.Redirect("InProgArticles.aspx", false);
        }
        protected void PostArticle_Click(object sender, EventArgs e)
        {
            PortalArticle pa = new PortalArticle(long.Parse(Request.QueryString["id"]));
            pa.Title = ArticleTitle.Text;
            pa.RawBody = RadEditor1.Content;

            if (ArticleDescription.Text.Trim().Length > 0)
                pa.Description = ArticleDescription.Text;
            else
                pa.Description = ProcessDescription(pa.RawBody);

            pa.LastEditedIn = DateTime.Now;
            if (pa.Status == 0)
                pa.Status = 1;

            pa.Update();
            if (pa.Status == 1)
                Response.Redirect("InProgArticles.aspx", false);
            else
            {
                Response.Redirect("/ArticleView.aspx?id=" + pa.PortalArticleID.ToString(), false);
            }
        }

        private string ProcessDescription(string str)
        {
            string res = StripHTML(str);
            if (res.Length > 350)
                return res.Substring(0, res.LastIndexOf(" ", 350));
            else
            {
                return res;
            }
        }

        private string StripHTML(string htmlString)
        {

            string pattern = @"<(.|\n)*?>";
            return Regex.Replace(htmlString, pattern, string.Empty);
        }
    }
}
