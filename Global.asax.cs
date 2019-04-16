using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;
using System.Collections.Generic;

namespace FamilyPortal
{
    public class Global : System.Web.HttpApplication
    {        
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Lang"] = false;
            Session["dir"] = "left";
            Session["ndir"] = "right";
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (Application["uList"] != null)
            {
               List<string> ulist = (List<string>)Application["uList"];
                if(ulist.Contains((string)Session["uName"]))
                    ulist.Remove((string)Session["uName"]);
            }

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}