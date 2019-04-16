using System;using System.Text;using System.Data;using System.Data.SqlClient;using System.Collections.Generic;using System.Xml.Serialization;namespace Insight 	{	[Serializable]	 public partial  class PortalPageArticles:Insight.DataBaseObject,IDisposable	{		#region Private Variables		private Int64 _OrderInPage;		private Int64 _ArticleID;		private DateTime _PublishedIN;		private Int64 _PageID;		private Int64 _PageArticleID;		#endregion		#region Public properties		/// <summary>		/// Use the total number of articles and date to sort in display (latest artilce order= count of articles in page)		/// </summary>		public Int64 OrderInPage		{			 get { return _OrderInPage; }			 set { _OrderInPage=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 ArticleID		{			 get { return _ArticleID; }			 set { _ArticleID=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public DateTime PublishedIN		{			 get { return _PublishedIN; }			 set { _PublishedIN=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 PageID		{			 get { return _PageID; }			 set { _PageID=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 PageArticleID		{			 get { return _PageArticleID; }			 set { _PageArticleID=value; }		}		#endregion		#region methods	#region Events		 public List<ValidateRecord> ValidationSummary = new List<ValidateRecord>();	#endregion		public PortalPageArticles()		{			TableName="PortalPageArticles";		}		public PortalPageArticles(Int64 PageArticleID)		{			TableName="PortalPageArticles";			_PageArticleID=PageArticleID;			LoadByPrimaryKey();		}		public override string ToString()		{			XmlSerializer xml = new XmlSerializer(typeof(PortalPageArticles));			StringBuilder outstr = new StringBuilder();			System.IO.TextWriter textwriter = new System.IO.StringWriter(outstr);			xml.Serialize(textwriter, this);			xml = null;			textwriter.Flush();			textwriter.Close();			textwriter = null;			return outstr.ToString();		}		public PortalPageArticles Clone()		{			XmlSerializer xml = new XmlSerializer(typeof(PortalPageArticles));			System.IO.TextReader textreader = new System.IO.StringReader(this.ToString());			return (PortalPageArticles)xml.Deserialize(textreader);		}		public void LoadByPrimaryKey()		{			DataSet Internalds=new DataSet();			this.RunSqlCommand("Select * from PortalPageArticles where PageArticleID="+_PageArticleID.ToString() , Internalds);			if (Internalds!=null && Internalds.Tables[0].Rows.Count>0)			{				_OrderInPage =(Int64) Internalds.Tables[0].Rows[0]["OrderInPage"];				_ArticleID =(Int64) Internalds.Tables[0].Rows[0]["ArticleID"];				_PublishedIN =(DateTime) Internalds.Tables[0].Rows[0]["PublishedIN"];				_PageID =(Int64) Internalds.Tables[0].Rows[0]["PageID"];				_PageArticleID =(Int64) Internalds.Tables[0].Rows[0]["PageArticleID"];				Internalds.Dispose();				this.Close();			}			else			{				this.Close();			}		}		protected override void OnValidate()		{			ValidationSummary.Clear();			if (_ArticleID==0)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "ArticleID Value can not be null ",PropertyName = "ArticleID",ValidationError = " " });				 //throw new Exception("ArticleID Value can not be null");			}			if (_PublishedIN==DateTime.MinValue)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "PublishedIN Value can not be null ",PropertyName = "PublishedIN",ValidationError = " " });				 //throw new Exception("PublishedIN Value can not be null");			}			if (_PageID==0)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "PageID Value can not be null ",PropertyName = "PageID",ValidationError = " " });				 //throw new Exception("PageID Value can not be null");			}			if (ValidationSummary.Count>0)				throw new ValidationException("Missing Properties", ValidationSummary);		}		protected override bool OnInsert()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[4];			StoredProcedureParam[0]=MakeParameter("@OrderInPage",_OrderInPage);			StoredProcedureParam[1]=MakeParameter("@ArticleID",_ArticleID);			StoredProcedureParam[2]=MakeParameter("@PublishedIN",_PublishedIN);			StoredProcedureParam[3]=MakeParameter("@PageID",_PageID);			try			{				RunSqlCommand("[Insert_PortalPageArticles]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						Int64 Ident=Int64.Parse(mReader[1].ToString());						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						_PageArticleID=Ident;						return Res;						}					else						{							mReader.Close();							mReader=null;							throw new Exception("Data Reader is null");						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnUpdate()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[5];			StoredProcedureParam[0]=MakeParameter("@OrderInPage",_OrderInPage);			StoredProcedureParam[1]=MakeParameter("@ArticleID",_ArticleID);			StoredProcedureParam[2]=MakeParameter("@PublishedIN",_PublishedIN);			StoredProcedureParam[3]=MakeParameter("@PageID",_PageID);			StoredProcedureParam[4]=MakeParameter("@PageArticleID",_PageArticleID);			try			{				RunSqlCommand("[Update_PortalPageArticles]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						return Res;						}					else						{							mReader.Close();							mReader=null;							return false;						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnDelete()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[1];			StoredProcedureParam[0]=MakeParameter("@PageArticleID",_PageArticleID);			try			{				RunSqlCommand("[Delete_PortalPageArticles]",StoredProcedureParam,ref mReader);				bool Res=false;				if(mReader.Read())						Res=bool.Parse(mReader[0].ToString());				mReader.Close();				mReader=null;				this.Close();				return Res;			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		public new void Dispose()		{			base.Dispose();			//GC.SuppressFinalize(this);		}		public static Insight.Datasets.PortalPageArticlesDS SelectAll()		{			 Insight.Datasets.PortalPageArticlesDS ResDS=new Insight.Datasets.PortalPageArticlesDS();			 RunStaticSqlCommand("Select * from PortalPageArticles", ResDS,"PortalPageArticles");			 return (Insight.Datasets.PortalPageArticlesDS) ResDS ;		}		public static Insight.Datasets.PortalPageArticlesDS SelectWhere(string FilterBy)		{			 Insight.Datasets.PortalPageArticlesDS  ResDS=new Insight.Datasets.PortalPageArticlesDS();			 RunStaticSqlCommand("Select * from PortalPageArticles where " + FilterBy, ResDS, "PortalPageArticles");			 return (Insight.Datasets.PortalPageArticlesDS) ResDS ; 		}		#endregion	}}