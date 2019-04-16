using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace Insight.Controls
{
    public partial class YoutubeContainer : System.Web.UI.UserControl
    {
        string bmstr="<embed src=\"http://www.youtube.com/v/{0}&hl=en_US&fs=1&\" type=\"application/x-shockwave-flash\" allowscriptaccess=\"always\" allowfullscreen=\"true\" width=\"425\" height=\"350\">";
        string _YoutubeUrl="";
        
        [Browsable(true)]
        public string YoutubeUrl { get { return _YoutubeUrl; } set { _YoutubeUrl=value;} }        

        protected void Page_Load(object sender, EventArgs e)
        {
            emb.Text = string.Format(bmstr,_YoutubeUrl );
        }
    }
}