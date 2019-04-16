using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Insight.Datasets;

namespace Insight.Controls
{
    public partial class LoginControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
            else
            {
                Profile pf = new Profile();
                DataSet Ds = new DataSet();

                pf.RunSqlCommand("select * from [profile] where loginname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", Ds);
                if (Ds.Tables[0].Rows.Count > 0)
                {
                    loggedin.Visible = true;
                    poll.Visible = false;
                    pf = new Profile((long)Ds.Tables[0].Rows[0]["ProfileID"]);
                    Session["uName"] = pf.FName + " " + pf.LName;
                    Session["ProfileID"] = pf.ProfileID;
                    Session["ForumUserID"] = ForumsUser.SelectWhere("ProfileID=" + pf.ProfileID.ToString()).ForumsUser[0].UserID;
                    Session["Role"] = (Roles)pf.SecurityRoles;
                    uName.Text = (string)Session["uName"];
                    Session["IsAdmin"] = pf.isPortalAdmin;

                    ForumsUser fu = new ForumsUser((long)Session["ForumUserID"]);
                    fu.LastVisit = DateTime.Now;
                    fu.Update();
                    fu.Dispose();

                    InitUsers(pf.FName + " " + pf.LName);

                    ForumsBoard fb = new ForumsBoard();
                    ForumsBoardDS fds = ForumsBoard.SelectAll();
                    if (fds != null && fds.ForumsBoard != null && fds.ForumsBoard.Count > 0)
                        Session["BoardID"] = fds.ForumsBoard[0].BoardID;

                    if (Request.QueryString["red"] != null)
                    {
                        Response.Redirect(this.Server.UrlDecode(Request.QueryString["red"]));
                    }
                    else
                        Response.Redirect("/index.aspx");

                }
                else
                {
                    errorpanel.Visible = true;
                }
                pf.Dispose();
                Ds.Dispose();
                pf = null;
            }
           

        }

        private void InitUsers(string uname)
        {
            if (Application["uList"] == null)
            { 
                Application["uList"] = new List<string>(){"*"}; 
            }


            List<string> ulist = (List<string>)Application["uList"];
            if(ulist.Contains(uname))
                return;
            ulist.Add(uname);
            Application["uList"]=ulist;
        }

    }
}