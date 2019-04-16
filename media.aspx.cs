using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Insight
{
    public partial class media : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMediaLinks();
                BindVideoLinks();
            }
        }

        private void BindMediaLinks()
        {
            DataSet Ds = new DataSet();
            PortalPageArticles.RunStaticSqlCommand("Select  * from PageArticlesList where PageID=18 order by Publishedin desc", Ds, "PageArticlesList");
            medialinks.DataSource = Ds;
            medialinks.DataBind();
            Ds.Dispose();
        }

        private void BindVideoLinks()
        {
            DataSet Ds = new DataSet();
            PortalPageArticles.RunStaticSqlCommand("Select * from PageArticlesList where PageID=19 order by Publishedin desc", Ds, "PageArticlesList");
            if (Ds.Tables[0].Rows.Count > 0)
            {
                vid1Title.Text = (string)Ds.Tables[0].Rows[0]["title"];
                YoutubeContainer1.YoutubeUrl = (string)Ds.Tables[0].Rows[0]["Description"];
            }
            else
                VideosPanel.Visible = false;

            if (Ds.Tables[0].Rows.Count > 1)
            {
                vid2Title.Text = (string)Ds.Tables[0].Rows[1]["title"];
                YoutubeContainer2.YoutubeUrl = (string)Ds.Tables[0].Rows[1]["Description"];
            }
            Ds.Dispose();
        }
    }
}
