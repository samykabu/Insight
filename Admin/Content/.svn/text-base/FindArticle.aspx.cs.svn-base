using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Content
{
    public partial class FindArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }
        }

        protected void FindArticleBt(object sender, EventArgs e)
        {         
            articleList.DataSource = PortalArticle.SelectWhere("isPublished=1 and title like '%" + ArticleTitle.Text + "%'");
            articleList.DataBind();
        }

        protected void CancelBTEv(object sender, EventArgs e)
        {
            Response.Redirect("/admin/adminhome.aspx");
        }
    }
}
