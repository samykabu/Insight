using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Insight.ORM.Collections
{
    public class Profiles:List<Profile>
    {
        public Profiles()
        {
        }
        public Profiles(DataSet ds)
        {
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Profile oprofile = new Profile();
                oprofile.Email = (string)row["Email"];
                oprofile.EnableNotifications = (bool)row["EnableNotifications"];
                oprofile.FileQouta = (long)row["FileQouta"];
                oprofile.FName = (string)row["FName"];
                oprofile.HomePhone1 = (string)( row["HomePhone1"]==DBNull.Value?"": row["HomePhone1"]);
                oprofile.isPortalAdmin =(bool) row["isPortalAdmin"];
                oprofile.LastLogin = (DateTime)row["LastLogin"];
                oprofile.LName = (string)row["LName"];
                oprofile.LoginName = (string)row["LoginName"];
                oprofile.Mobile1 = (string)row["Mobile1"];
                oprofile.Password = (string)row["Password"];
                oprofile.ProfileID = (long)row["ProfileID"];
                oprofile.ProfileImage =(byte[]) row["ProfileImage"];
                oprofile.SecurityRoles =(short) row["SecurityRoles"];
                this.Add(oprofile);
            }
        }      
    }
}
