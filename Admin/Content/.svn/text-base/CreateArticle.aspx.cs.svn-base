using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Content
{
    public partial class CreateArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }
        }

        protected void CreateArticel(object sender, EventArgs e)
        {
            PortalArticle pa = new PortalArticle();
            pa.Title = ArticleTitle.Text;
            pa.isPublished = false;
            pa.CreatedIN = DateTime.Now;
            pa.LastEditedIn = DateTime.Now;
            pa.LanguageID = long.Parse(DropDownList1.SelectedValue);
            if (pa.Insert())
            {
                Server.Transfer("InProgArticles.aspx");
            }
            else
            {
                errormsg.Text = "Article Couldn't be created try again";
            }
        }

        protected void CancelBTEv(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/AdminHome.aspx");
        }
    }
}
