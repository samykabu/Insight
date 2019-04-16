using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insight
{
    public partial class ArticleMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SetColorBT(object sender, ImageClickEventArgs e)
        {
            ImageButton b = (ImageButton)sender;
            switch (b.ID)
            {
                case "ImageB0":
                    Session["SelectedTheme"] = "green";
                    Session["SelectedThemeColor"] = "#3b5f39";
                    break;
                case "ImageB1":
                    Session["SelectedTheme"] = "blue";
                    Session["SelectedThemeColor"] = "#2d556f";
                    break;
                case "ImageB2":
                    Session["SelectedTheme"] = "red";
                    Session["SelectedThemeColor"] = "#7a2123";
                    break;
                case "ImageB3":
                    Session["SelectedTheme"] = "purple";
                    Session["SelectedThemeColor"] = "#3b4060";
                    break;
                case "ImageB4":
                    Session["SelectedTheme"] = "pink";
                    Session["SelectedThemeColor"] = "#945a83";
                    break;
                case "ImageB5":
                    Session["SelectedTheme"] = "grey";
                    Session["SelectedThemeColor"] = "#6B6B6B";
                    break;
            }
        }
    }
}
