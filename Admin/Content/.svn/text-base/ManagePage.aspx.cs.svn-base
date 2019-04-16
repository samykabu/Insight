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
    public partial class ManagePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["pid"] != null)
                {
                    UpdateBinging();
                }
                else
                    Response.Redirect("PortalPagesView.aspx");

                PortalPage pa = new PortalPage(long.Parse(Request.QueryString["pid"]));
                PageTitle.Text = pa.Title;
                pa.Dispose();
            }
        }
        private void UpdateBinging()
        {
            long pageid = long.Parse(Request.QueryString["pid"]);
            PortalArticle pa = new PortalArticle();
            DataSet pads = new DataSet();
            pa.RunSqlCommand("Select * from PageArticles where PageID=" + pageid.ToString() + " order by Publishedin Desc", pads);

            Datalist.DataSource = pads;
            Datalist.DataBind();

        }
        protected void ProcessCommand(object source, DataListCommandEventArgs e)
        {
            long pageid = long.Parse(Request.QueryString["pid"]);
            PortalPageArticles pa = new PortalPageArticles(long.Parse((string)e.CommandArgument));
            DataSet pads = new DataSet();


            switch (e.CommandName)
            {
                case "MoveItUP":
                    pads = new DataSet();
                    pa.RunSqlCommand("Select * from PageArticles where PageID=" + pageid.ToString() + " and PublishedIn >'" + pa.PublishedIN.ToString("MM/dd/yyyy hh:mm:ss.fff tt") + "' order by Publishedin Asc", pads);
                    if (pads.Tables[0].Rows.Count == 1)
                    {
                        DateTime dt = (DateTime)pads.Tables[0].Rows[0]["PublishedIN"];
                        pa.PublishedIN = dt.AddSeconds(5);
                        pa.Update();
                        UpdateBinging();

                    }
                    else if (pads.Tables[0].Rows.Count > 1)
                    {
                        DateTime dt0 = (DateTime)pads.Tables[0].Rows[0]["PublishedIN"];
                        DateTime dt1 = (DateTime)pads.Tables[0].Rows[1]["PublishedIN"];
                        TimeSpan ts = dt1 - dt0;
                        pa.PublishedIN = dt0.AddMilliseconds(ts.TotalMilliseconds / 2);
                        pa.Update();
                        UpdateBinging();
                    }
                    break;
                case "MoveItDown":
                    pads = new DataSet();
                    pa.RunSqlCommand("Select * from PageArticles where PageID=" + pageid.ToString() + " and PublishedIn <'" + pa.PublishedIN.ToString("MM/dd/yyyy hh:mm:ss.fff tt") + "' order by Publishedin Desc", pads);
                    if (pads.Tables[0].Rows.Count == 1)
                    {
                        DateTime dt = (DateTime)pads.Tables[0].Rows[0]["PublishedIN"];
                        pa.PublishedIN = dt.AddSeconds(-5);
                        pa.Update();
                        UpdateBinging();

                    }
                    else if (pads.Tables[0].Rows.Count > 1)
                    {
                        DateTime dt0 = (DateTime)pads.Tables[0].Rows[0]["PublishedIN"];
                        DateTime dt1 = (DateTime)pads.Tables[0].Rows[1]["PublishedIN"];
                        TimeSpan ts = dt1 - dt0;
                        pa.PublishedIN = dt0.AddMilliseconds(ts.TotalMilliseconds / 2);
                        pa.Update();
                        UpdateBinging();
                    }
                    break;
                case "RemoveFromPage":
                    pa.Delete();
                    UpdateBinging();
                    break;
                case "DeleteArticle":
                    break;
            }

        }

        protected override void Render(HtmlTextWriter writer)
        {
            Page.ClientScript.RegisterForEventValidation("MoveUp");
            Page.ClientScript.RegisterForEventValidation("MoveDown");
            Page.ClientScript.RegisterForEventValidation("DeletefromPage");
            Page.ClientScript.RegisterForEventValidation("Deletearticle");
            base.Render(writer);
        }
    }
}
