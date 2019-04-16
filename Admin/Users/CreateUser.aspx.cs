using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Users
{
    public partial class CreateUser : System.Web.UI.Page
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
            using (Profile oprofile = new Profile())
            {
                try
                {
                    oprofile.FName = FirstName.Text;
                    oprofile.LName = FamilyName.Text;
                    oprofile.Email = Email1.Text;
                    oprofile.EnableNotifications = true;
                    oprofile.HomePhone1 = HomeNumber.Text;
                    oprofile.isPortalAdmin = IsAdmin.Checked;
                    oprofile.LoginName = LoginName.Text;
                    oprofile.Password = PWD1.Text;
                    oprofile.Mobile1 = MoilePhone.Text;
                    oprofile.LastLogin = DateTime.Now;
                    oprofile.EnableNotifications = SendNotification.Checked;
                    oprofile.StartTransaction();
                    oprofile.FileQouta = long.Parse(FolderQouta.Text) * 1024 * 1024;
                    Roles user_role = Roles.ForumUser;
                    if (IsEditor.Checked)
                        user_role = user_role | Roles.CMSAuthor;

                    if (IsAdmin.Checked)
                        user_role = user_role | Roles.FullAdministrator;

                    oprofile.SecurityRoles = (short)user_role;

                    oprofile.TransactionType = Insight.TransactionMode.RequireTransaction;
                    if (oprofile.Insert())
                    {
                        using (ForumsUser oForumuser = new ForumsUser())
                        {                         
                            oForumuser.Name = FirstName.Text + " " + FatherName.Text + " " + FamilyName.Text;
                            oForumuser.BoardID = 3;
                            oForumuser.Email = oprofile.Email;
                            oForumuser.isApproved = true;
                            oForumuser.Joined = DateTime.Now;
                            oForumuser.LastVisit = DateTime.Now;
                            oForumuser.ProfileID = oprofile.ProfileID;
                            if (oForumuser.Insert() )
                            {
                                oprofile.Commit();
                                Response.Redirect("Userslist.aspx", false);
                            }
                            else
                            {
                                oprofile.RollBack();
                                ErrorMSG m = new ErrorMSG("Error adding user", "User profile creation failed.", "", @"Please retry again <a href='/Admin/AdminHome.aspx'>Back</a>");
                                Session["Err"] = m;
                                Response.Redirect("/Error.aspx", false);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    ErrorMSG m = new ErrorMSG("Error adding user", "User profile creation failed.", ex.Message, @"Please retry again <a href='/Admin/AdminHome.aspx'>Back</a>");
                    Session["Err"] = m;
                    Response.Redirect("/Error.aspx", false);
                }

            }
        }

        protected void CancelBTEv(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Adminhome.aspx", false);
        }

    }
}
