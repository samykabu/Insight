using System;
        public static Insight.Datasets.PortalArticleDS SelectWhere(string FilterBy,int count)
        {
            Insight.Datasets.PortalArticleDS ResDS = new Insight.Datasets.PortalArticleDS();
            RunStaticSqlCommand("Select Top "+ count +" * from PortalArticle where " + FilterBy, ResDS, "PortalArticle");
            return (Insight.Datasets.PortalArticleDS)ResDS;
        }