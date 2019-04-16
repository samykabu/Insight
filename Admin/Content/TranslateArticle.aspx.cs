using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insight.Datasets;

namespace Insight.Admin.Content
{
    public partial class TranslateArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || ((bool)Session["IsAdmin"] == false))
            {
                Response.Redirect("/login.aspx?red=" + this.Server.UrlEncode(Request.ServerVariables["URL"]));
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    long articleid = long.Parse(Request.QueryString["id"]);
                    if (articleid > 0)
                    {
                        PortalArticle pa = new PortalArticle(articleid);
                        if (pa.DefLangArticleID > 0) // this article is a translation to a prvious article
                        {
                            Response.Redirect("/index.aspx", false); //do nothing
                        }
                        else
                        {
                            PortalArticleDS paDS = PortalArticle.SelectWhere("ArticleLanguage=" + articleid.ToString());
                            if (paDS.PortalArticle.Count > 0)  //there is a translation of this article already in the system
                            {
                                Response.Redirect("/index.aspx", false);  //do nothing
                            }
                            else
                            {
                                PortalArticle paTranslate = new PortalArticle();
                                paTranslate.DefLangArticleID = articleid;
                                paTranslate.Title = pa.Title + " (Change Title)";
                                paTranslate.LanguageID = ((string)Request.QueryString["lng"]).ToLower() == "ara" ? 1 : 2;
                                paTranslate.Status = 0;
                                paTranslate.TransactionType = Insight.TransactionMode.RequireTransaction;
                                paTranslate.StartTransaction();
                                paTranslate.CreatedIN = DateTime.Now;
                                if (paTranslate.Insert())
                                {
                                    PortalArticleTranslation pat = new PortalArticleTranslation();                                    
                                    pat.TranslatedArticleID = articleid;
                                    pat.ArticleID = paTranslate.PortalArticleID;
                                    pat.LanguageID = ((string)Request.QueryString["lng"]).ToLower() == "ara" ? 1 : 2;

                                    if (pat.Insert())
                                    {
                                        paTranslate.Commit();
                                        Response.Redirect("InProgArticles.aspx", false);
                                    }
                                    else
                                    {
                                        paTranslate.RollBack();
                                        ErrorMSG em = new ErrorMSG("Translation Error", "Could not add translation for the selected article");
                                        Session["Err"] = em;
                                        Response.Redirect("Error.aspx", false);
                                    }

                                }
                                else
                                {
                                    paTranslate.RollBack();
                                    ErrorMSG em = new ErrorMSG("Translation Error", "Could not add translation for the selected article");
                                    Session["Err"] = em;
                                    Response.Redirect("Error.aspx", false);
                                }
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("/index.aspx", false);
                    }
                }
            }
        }

        protected void CancelBTEv(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void CreateArticel(object sender, EventArgs e)
        {

        }
    }
}
