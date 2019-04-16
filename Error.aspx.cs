using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight
{
    public class ErrorMSG
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string Cause { get; set; }
        public string Trial { get; set; }

        public ErrorMSG(string titlestr, string descrpstr)
            : this(titlestr, descrpstr, "", "")
        {
        }
        public ErrorMSG(string titlestr, string descrpstr, string causestr)
            : this(titlestr, descrpstr, causestr, "")
        { }

        public ErrorMSG(string titlestr, string descrpstr, string causestr, string trialstr)
        {
            Title = titlestr;
            Description = descrpstr;
            Cause = causestr;
            Trial = trialstr;
        }
    }
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Err"] != null)
            {
                ErrorMSG emsg = (ErrorMSG)Session["Err"];
                this.Title = "Error";
                this.ErrorTitle.Text = emsg.Title;
                ErrorDescription.Text = emsg.Description;
                ErrorCause.Text = emsg.Cause;
                ErroTrialMsg.Text = emsg.Trial;
                Session["Err"] = null;
            }

        }

    }
}
