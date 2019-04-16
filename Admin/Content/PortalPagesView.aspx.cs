using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Content
{
    public partial class PortalPagesView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }
            
            Datalist.DataSource = PortalPage.SelectAll();
            Datalist.DataBind();
        }

        protected void repub(object sender, EventArgs e)
        {
            Response.Redirect("FindArticle.aspx", false);
        }
    }
}
