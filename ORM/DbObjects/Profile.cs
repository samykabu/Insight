using System;
using Insight.ORM.Collections;
        public static Profiles SelectAllTest()
        {
            DataSet ResDS = new DataSet();
            RunStaticSqlCommand("Select * from Profile", ResDS, "Profile");
            return new Profiles(ResDS);
        }