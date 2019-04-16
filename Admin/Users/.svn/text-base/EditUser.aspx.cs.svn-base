using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight.Admin.Users
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }

            if (!IsPostBack && Request.QueryString["uid"] != null)
            {
                long profileid = long.Parse(Request.QueryString["uid"]);
                using (Profile oprofile = new Profile(profileid))
                {
                    FirstName.Text = oprofile.FName;
                    FamilyName.Text = oprofile.LName;
                    Email1.Text = oprofile.Email;
                    HomeNumber.Text = oprofile.HomePhone1;
                    IsAdmin.Checked = oprofile.isPortalAdmin;
                    LoginName.Text = oprofile.LoginName;
                    PWD1.Text = oprofile.Password;
                    PWD2.Text = oprofile.Password;
                    MoilePhone.Text = oprofile.Mobile1;
                    SendNotification.Checked = oprofile.EnableNotifications;
                    FolderQouta.Text = (oprofile.FileQouta/(1024*1024)).ToString();
                    Roles userroles = (Roles)oprofile.SecurityRoles;

                    if ((userroles & Roles.FullAdministrator) == Roles.FullAdministrator)
                        IsAdmin.Checked = true;

                    if ((userroles & Roles.CMSAuthor) == Roles.FullAdministrator)
                        IsAdmin.Checked = true;

                    using (ForumsUser oForumuser = new ForumsUser(ForumsUser.SelectWhere("ProfileID=" + Request.QueryString["uid"]).ForumsUser[0].UserID))
                    {
                        FatherName.Text = oForumuser.Name.Split(' ')[1];
                    }
                }
            }
            else
            {
                Response.Redirect("UsersList.aspx", false);
            }

        }

        protected void CancelUpdate(object sender, EventArgs e)
        {
            Response.Redirect("Userslist.aspx", false);
        }

        protected void UpdateUser(object sender, EventArgs e)
        {
            using (Profile oprofile = new Profile(
            long.Parse(Request.QueryString["uid"])))
            {
                try
                {
                    oprofile.FName = FirstName.Text;
                    oprofile.LName = FamilyName.Text;
                    oprofile.Email = Email1.Text;
                    oprofile.HomePhone1 = HomeNumber.Text;
                    oprofile.isPortalAdmin = IsAdmin.Checked;
                    oprofile.LoginName = LoginName.Text;
                    oprofile.Password = PWD1.Text;
                    oprofile.Mobile1 = MoilePhone.Text;
                    oprofile.LastLogin = DateTime.Now;
                    oprofile.EnableNotifications = SendNotification.Checked;
                    oprofile.FileQouta = long.Parse(FolderQouta.Text) * (1024 * 1024);
                    Roles user_role = Roles.ForumUser;

                    if (IsEditor.Checked)
                        user_role = user_role | Roles.CMSAuthor;

                    if (IsAdmin.Checked)
                        user_role = user_role | Roles.FullAdministrator;

                    oprofile.SecurityRoles = (short)user_role;

                    oprofile.TransactionType = Insight.TransactionMode.RequireTransaction;
                    oprofile.StartTransaction();
                    if (oprofile.Update())
                    {

                        using (ForumsUser oForumuser = new ForumsUser(ForumsUser.SelectWhere("ProfileID=" + Request.QueryString["uid"]).ForumsUser[0].UserID))
                        {                            
                            oForumuser.Name = FirstName.Text + " " + FatherName.Text + " " + FamilyName.Text;
                            oForumuser.BoardID = 3;
                            oForumuser.Email = oprofile.Email;
                            oForumuser.isApproved = true;
                            oForumuser.Joined = DateTime.Now;
                            oForumuser.LastVisit = DateTime.Now;
                            oForumuser.ProfileID = oprofile.ProfileID;
                            if (oForumuser.Update())
                            {
                                oprofile.Commit();
                                Response.Redirect("UsersList.aspx", false);
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
    }
}
