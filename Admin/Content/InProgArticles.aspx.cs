using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insight.Datasets;

namespace Insight.Admin.Content
{
    public partial class InProgArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }

            if (!IsPostBack)
            {
                DoBind();
            }
        }
        private void DoBind()
        {
            PortalArticleDS pasource = PortalArticle.SelectWhere("isPublished='false'");
            InProgressArticles.DataSource = pasource;
            InProgressArticles.DataBind();
        }
        public string ArticleLanguage(long lang)
        {
            if (lang == 2)
                return "English";
            return "Arabic";
        }

        public string StatusString(int status)
        {
            switch (status)
            {
                case 0:
                    return "Drafting";
                case 1:
                    return "Posted";
                case 2:
                    return "Staged";
                case 3:
                    return "Canceled";
                case 4:
                    return "Published";
            }
            return "NA";
        }

        protected void ClickedAddNew(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("CreateArticle.aspx");
        }

        protected void BindImages(object sender, DataListItemEventArgs e)
        {
            Roles UserRole = (Roles)Session["Role"];
            bool isEditor = ((UserRole & Roles.CMSAdministrator) == Roles.CMSAdministrator) || ((UserRole & Roles.CMSAuthor) == Roles.CMSAuthor) || ((UserRole & Roles.FullAdministrator) == Roles.FullAdministrator);
            bool isSatgingAdmin = ((UserRole & Roles.CMSStagingMnager) == Roles.CMSStagingMnager) || ((UserRole & Roles.CMSAuthor) == Roles.CMSAuthor) || ((UserRole & Roles.FullAdministrator) == Roles.FullAdministrator);
            bool isPublisher = ((UserRole & Roles.CMSPublisher) == Roles.CMSPublisher) || ((UserRole & Roles.CMSAuthor) == Roles.CMSAuthor) || ((UserRole & Roles.FullAdministrator) == Roles.FullAdministrator);
            DataRowView rv = (DataRowView)e.Item.DataItem;

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                ImageButton img1 = (ImageButton)e.Item.FindControl("EditArticle");

                if (img1 != null)
                {
                    img1.Visible = isEditor && ((int)rv["Status"] == 0);
                    img1.CommandArgument = rv["PortalArticleID"].ToString();
                }

                img1 = (ImageButton)e.Item.FindControl("stageArticle");

                if (img1 != null)
                {
                    img1.Visible = (isSatgingAdmin || isPublisher) && ((int)rv["Status"] == 1); ;
                    img1.CommandArgument = rv["PortalArticleID"].ToString();
                }

                img1 = (ImageButton)e.Item.FindControl("DelArticle");

                if (img1 != null)
                {
                    img1.Visible = isEditor || isPublisher || isSatgingAdmin;
                    img1.CommandArgument = rv["PortalArticleID"].ToString();
                }

            }
        }

        protected void DelArticleBT(object sender, ImageClickEventArgs e)
        {
            PortalArticle pa = new PortalArticle(long.Parse(((ImageButton)sender).CommandArgument));
            pa.Delete();
            DoBind();
        }

        protected void StageArticleBT(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StagingArticles.aspx?id=" + ((ImageButton)sender).CommandArgument.ToString(), false);
        }

        protected void EditArticleBT(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ArticleEditor.aspx?id=" + ((ImageButton)sender).CommandArgument.ToString(), false);
        }
    }
}
