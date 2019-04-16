using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Insight
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendReg(object sender, ImageClickEventArgs e)
        {
            sendByemail();
            Response.Redirect("/Thanks.html",false);
        }
        private bool sendByemail()
        {
            try
            {
                System.Net.Mail.SmtpClient sc = new System.Net.Mail.SmtpClient();
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("info@insightcareers.org");
                mailMessage.To.Add(new MailAddress("info@insightcareers.org"));
                mailMessage.Subject = "Registration Request";
                mailMessage.Body = "Full Name :" + fname.Text + "/r/n الاسم كاملاً بالعربية:" + arfname.Text + "/r/n Email:" + emailtxt.Text + "/r/n Mobile:" + mobiletxt.Text + "/r/n Program:" + SelProgram.SelectedValue;

                sc.Host = "127.0.0.1";
                sc.Send(mailMessage);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }
    }
}
