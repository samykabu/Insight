using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Insight.Datasets;

namespace Insight.Admin.Content
{
    public partial class StagingArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }

            if (Request.QueryString["id"] == null)
                Response.Redirect("InProgArticles.aspx");

            if (!IsPostBack)
            {

                doBind();
            }
        }

        private void doBind()
        {
            Datalist.DataSource = PortalPage.SelectAll();
            Datalist.DataBind();
        }

        protected void PublishArticelDone(object sender, EventArgs e)
        {
            PortalArticle pa = new PortalArticle(long.Parse(Request.QueryString["id"]));
            pa.TransactionType = Insight.TransactionMode.RequireTransaction;
            pa.PublishedIn = DateTime.Now;
            pa.isPublished = true;
            pa.Status = 4;            
            pa.Update();
            Response.Redirect("InProgArticles.aspx",false);
        }

        protected void checkPage(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                ImageButton ib = (ImageButton)e.Item.FindControl("PulishAction");
                ib.CommandArgument = ((DataRowView)e.Item.DataItem)["PortalPageID"].ToString();
                DataRowView drpp = (DataRowView)e.Item.DataItem;
                using (PortalPageArticlesDS ds = PortalPageArticles.SelectWhere("Articleid=" + Request.QueryString["id"] + " and  pageid=" + drpp["portalpageid"]))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        ib.ImageUrl = "/images/remove.png";
                    }
                    else
                    {
                        ib.ImageUrl = "/images/add.png";
                    }
                }
            }
        }
     

        protected void ChnagePageTarget(object sender, CommandEventArgs e)
        {
            long orderinpage = 1;
            if (e.CommandName == "ChangeState")
            {
                long ArticleID = long.Parse(Request.QueryString["id"]);
                bool res = true;
                long pageid = long.Parse((string)e.CommandArgument);
                
                PortalPageArticlesDS ppaDS = PortalPageArticles.SelectWhere("ArticleID=" + ArticleID.ToString() + " and pageid=" + pageid.ToString());
                PortalPageArticles ppb;
                
                if (ppaDS.PortalPageArticles.Count == 0)
                {
                    ppb = new PortalPageArticles();
                    ppb.ArticleID = ArticleID;
                    ppb.PageID = pageid;
                    ppb.OrderInPage = orderinpage;
                    ppb.PublishedIN = DateTime.Now;
                    ppb.Insert();
                }
                else
                {
                    ppb = new PortalPageArticles(ppaDS.PortalPageArticles[0].PageArticleID);
                    ppb.Delete();

                }
                doBind();
            }

        }
        protected void cancelbtenv(object sender, EventArgs e)
        {
            Response.Redirect("InProgArticles.aspx",false);
        }
    }
}
