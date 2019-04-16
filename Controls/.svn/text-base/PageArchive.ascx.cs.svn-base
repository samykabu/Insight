using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Controls
{
    public partial class PageArchive : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            {
                long PageID = 17;

                string query =
                    "SELECT COUNT(*) FROM PageArticlesList where Pageid={0} and publishedin between '{1}' and '{2}'";

                DataSet ds = new DataSet();
                PortalPage pp = new PortalPage();
                pp.RunSqlCommand(string.Format(query, PageID, "1/1/" + DateTime.Now.Year.ToString(), "2/1/" + DateTime.Now.Year.ToString()), ds);
                m1.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "2/1/" + DateTime.Now.Year.ToString(), "3/1/" + DateTime.Now.Year.ToString()), ds);
                m2.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "3/1/" + DateTime.Now.Year.ToString(), "4/1/" + DateTime.Now.Year.ToString()), ds);
                m3.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "4/1/" + DateTime.Now.Year.ToString(), "5/1/" + DateTime.Now.Year.ToString()), ds);
                m4.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "5/1/" + DateTime.Now.Year.ToString(), "6/1/" + DateTime.Now.Year.ToString()), ds);
                m5.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "6/1/" + DateTime.Now.Year.ToString(), "7/1/" + DateTime.Now.Year.ToString()), ds);
                m6.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "7/1/" + DateTime.Now.Year.ToString(), "8/1/" + DateTime.Now.Year.ToString()), ds);
                m7.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "8/1/" + DateTime.Now.Year.ToString(), "9/1/" + DateTime.Now.Year.ToString()), ds);
                m8.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "9/1/" + DateTime.Now.Year.ToString(), "10/1/" + DateTime.Now.Year.ToString()), ds);
                m9.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "10/1/" + DateTime.Now.Year.ToString(), "11/1/" + DateTime.Now.Year.ToString()), ds);
                m10.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "11/1/" + DateTime.Now.Year.ToString(), "12/1/" + DateTime.Now.Year.ToString()), ds);
                m11.Text = ds.Tables[0].Rows[0][0].ToString();
                ds = new DataSet();

                pp.RunSqlCommand(string.Format(query, PageID, "12/1/" + DateTime.Now.Year.ToString(), "1/1/" + (DateTime.Now.Year + 1).ToString()), ds);
                m12.Text = ds.Tables[0].Rows[0][0].ToString();
                ds.Dispose();
            }

        }
    }
}