using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight
{
    public partial class ArticleView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null || Request.QueryString["id"].Length == 0)
                Response.Redirect("/index.aspx", true);

            if (!IsPostBack)
                bindarticle();
                
        }
        private void bindarticle()
        {
            long articleid = long.Parse(Request.QueryString["id"]);
            PortalArticle pa = new PortalArticle(articleid);
            if (pa.PortalArticleID > 0)
            {
                ArticleTitle.Text = pa.Title;
                articleBody.Text = pa.RawBody;
            }else
                Response.Redirect("/index.aspx", true);
            pa.Dispose();
        }
    }
}
