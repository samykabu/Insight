using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Users
{
    public partial class Userslist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }

            if (!IsPostBack)
            {
                doBinding();
            }
        }

        private void doBinding()
        {
            UsersAcounts.DataSource = Profile.SelectAll();
            UsersAcounts.DataBind();

        }
        protected void newuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Users/CreateUser.aspx");
        }
        public string userRole(object r)
        {
            Roles role = (Roles)r;
            if ((role & Roles.FullAdministrator) == Roles.FullAdministrator)
                return "Administator";
            if ((role & Roles.CMSAuthor) == Roles.CMSAuthor)
                return "Editor";
            return "User";
        }
        protected void DeleteUser(object sender, CommandEventArgs e)
        {
            switch (e.CommandName.ToLower())
            {
                case "edituser":
                    Response.Redirect("EditUser.aspx?uid=" + e.CommandArgument.ToString(), false);
                    break;
                case "deleteuser":
                    try
                    {
                        using (Profile puser = new Profile(long.Parse(e.CommandArgument.ToString())))
                        {
                            if (puser.Delete())
                                doBinding();
                        }
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine(ex.Message);
                    }
                    break;
            }


        }
    }
}
