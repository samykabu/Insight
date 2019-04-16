using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight
{
    [Flags]
    public enum Roles
    {
        None = 0,
        CMSUser = 1,
        CMSAuthor = 2,
        CMSPhotogrpher = 4,
        CMSSpellChecker = 8,
        CMSContentreview = 16,
        CMSStagingMnager = 32,
        CMSPublisher = 64,
        CMSAdministrator = 128,
        ForumAdministrator = 256,
        ForumModerator = 512,
        ForumUser = 1024,
        FullAdministrator = 2048
    }

    public class Util
    {
        public static bool HasPermissionFor(Roles ProfileRoles, Roles CheckForPermission)
        {
            return ((CheckForPermission & ProfileRoles) == CheckForPermission);
        }

        public static string GetRelativeDateTime(DateTime dt)
        {
            string strDate = String.Format("{0} {1}", dt.ToShortDateString(), dt.ToShortTimeString());

            DateTime dtNow = DateTime.Now.ToUniversalTime();
            if ((dtNow - dt).TotalHours > 48)
            {
                strDate = String.Format("{0} {1}", dt.ToShortDateString(), dt.ToShortTimeString());
            }
            else if ((dtNow - dt).TotalHours >= 24)
            {
                strDate = String.Format("Yesterday at {0}", dt.ToShortTimeString());
            }
            else if ((dtNow - dt).TotalMinutes >= 60)
            {
                if ((dtNow - dt).TotalHours == 1)
                    strDate = String.Format("{0} hour ago", (int)(dtNow - dt).TotalHours);
                else
                    strDate = String.Format("{0} hours ago", (int)(dtNow - dt).TotalHours);
            }
            else if ((dtNow - dt).TotalSeconds >= 60)
            {
                if ((dtNow - dt).TotalMinutes == 1)
                    strDate = String.Format("{0} minute ago", (int)(dtNow - dt).TotalMinutes);
                else
                    strDate = String.Format("{0} minutes ago", (int)(dtNow - dt).TotalMinutes);
            }
            else
            {
                if ((dtNow - dt).TotalSeconds == 1)
                    strDate = String.Format("{0} second ago", (int)(dtNow - dt).TotalSeconds);
                else
                    strDate = String.Format("{0} seconds ago", (int)(dtNow - dt).TotalSeconds);
            }

            return strDate;
        }
    }
}