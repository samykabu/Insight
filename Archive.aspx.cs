using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Insight
{
    public partial class Archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                bindarticle();
        }
        private void bindarticle()
        {
            long pageID = 17;
            DateTime dt = DateTime.Parse(Request.QueryString["dt"]);
            MonthName.Text = dt.ToString("MMMM") + "   " + dt.Year.ToString();
            PortalPage pp = new PortalPage(pageID);            
            PortalPageArticles ppa = new PortalPageArticles();
            DataSet ds = new DataSet();
            ppa.RunSqlCommand("select * from PageArticlesList where pageid=" + pageID.ToString() + " and publishedin between '" + dt.ToShortDateString() + "' and '" + (dt.AddMonths(1)).ToShortDateString() + "' ", ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                articlelist.DataSource = ds;
                articlelist.DataBind();
            }
            ppa.Dispose();
            pp.Dispose();
        }
    }
}
