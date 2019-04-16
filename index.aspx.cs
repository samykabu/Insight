using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

namespace Insight
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                doBind();                     
        }

        private void doBind()
        {
            DataSet Ds = new DataSet();
            PortalPageArticles.RunStaticSqlCommand("Select top 3 * from PageArticlesList where PageID=17 order by Publishedin desc", Ds, "PageArticlesList");
            articlelist.DataSource = Ds;
            articlelist.DataBind();

        }

        protected void SendReg(object sender, ImageClickEventArgs e)
        {
            sendByemail();
            Response.Redirect("Thanks.html");
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
                mailMessage.Body = "Full Name :" + field1.Text + " الاسم كاملاً بالعربية:" + field2.Text + " Email:" + field3.Text + " Mobile:" + field4.Text + " Program:" + SelProgram.SelectedValue ;

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
