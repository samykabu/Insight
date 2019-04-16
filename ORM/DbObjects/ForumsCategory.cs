using System;using System.Text;using System.Data;using System.Data.SqlClient;using System.Collections.Generic;using System.Xml.Serialization;namespace Insight 	{	[Serializable]	 public partial  class ForumsCategory:Insight.DataBaseObject,IDisposable	{		#region Private Variables		private Int64 _BoardID;		private string _Name;		private Int64 _CategoryID;		private Int32 _SortOrder;		private string _CategoryImage=string.Empty;		#endregion		#region Public properties		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 BoardID		{			 get { return _BoardID; }			 set { _BoardID=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public string Name		{			 get { return _Name; }			 set { _Name=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 CategoryID		{			 get { return _CategoryID; }			 set { _CategoryID=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int32 SortOrder		{			 get { return _SortOrder; }			 set { _SortOrder=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public string CategoryImage		{			 get { return _CategoryImage; }			 set { _CategoryImage=value; }		}		#endregion		#region methods	#region Events		 public List<ValidateRecord> ValidationSummary = new List<ValidateRecord>();	#endregion		public ForumsCategory()		{			TableName="ForumsCategory";		}		public ForumsCategory(Int64 CategoryID)		{			TableName="ForumsCategory";			_CategoryID=CategoryID;			LoadByPrimaryKey();		}		public override string ToString()		{			XmlSerializer xml = new XmlSerializer(typeof(ForumsCategory));			StringBuilder outstr = new StringBuilder();			System.IO.TextWriter textwriter = new System.IO.StringWriter(outstr);			xml.Serialize(textwriter, this);			xml = null;			textwriter.Flush();			textwriter.Close();			textwriter = null;			return outstr.ToString();		}		public ForumsCategory Clone()		{			XmlSerializer xml = new XmlSerializer(typeof(ForumsCategory));			System.IO.TextReader textreader = new System.IO.StringReader(this.ToString());			return (ForumsCategory)xml.Deserialize(textreader);		}		public void LoadByPrimaryKey()		{			DataSet Internalds=new DataSet();			this.RunSqlCommand("Select * from ForumsCategory where CategoryID="+_CategoryID.ToString() , Internalds);			if (Internalds!=null && Internalds.Tables[0].Rows.Count>0)			{				_BoardID =(Int64) Internalds.Tables[0].Rows[0]["BoardID"];				_Name =(string) Internalds.Tables[0].Rows[0]["Name"];				_CategoryID =(Int64) Internalds.Tables[0].Rows[0]["CategoryID"];				_SortOrder =(Int32) Internalds.Tables[0].Rows[0]["SortOrder"];				_CategoryImage = (Internalds.Tables[0].Rows[0]["CategoryImage"]==System.Convert.DBNull ? string.Empty : (string)Internalds.Tables[0].Rows[0]["CategoryImage"]) ;				Internalds.Dispose();				this.Close();			}			else			{				this.Close();			}		}		protected override void OnValidate()		{			ValidationSummary.Clear();			if (_BoardID==0)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "BoardID Value can not be null ",PropertyName = "BoardID",ValidationError = " " });				 //throw new Exception("BoardID Value can not be null");			}			if (_Name==string.Empty)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "Name Value can not be null ",PropertyName = "Name",ValidationError = " " });				 //throw new Exception("Name Value can not be null");			}			if (ValidationSummary.Count>0)				throw new ValidationException("Missing Properties", ValidationSummary);		}		protected override bool OnInsert()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[4];			StoredProcedureParam[0]=MakeParameter("@BoardID",_BoardID);			StoredProcedureParam[1]=MakeParameter("@Name",_Name);			StoredProcedureParam[2]=MakeParameter("@SortOrder",_SortOrder);			StoredProcedureParam[3]=MakeParameter("@CategoryImage",(_CategoryImage==string.Empty? System.Convert.DBNull : _CategoryImage));			try			{				RunSqlCommand("[Insert_ForumsCategory]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						Int64 Ident=Int64.Parse(mReader[1].ToString());						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						_CategoryID=Ident;						return Res;						}					else						{							mReader.Close();							mReader=null;							throw new Exception("Data Reader is null");						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnUpdate()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[5];			StoredProcedureParam[0]=MakeParameter("@BoardID",_BoardID);			StoredProcedureParam[1]=MakeParameter("@Name",_Name);			StoredProcedureParam[2]=MakeParameter("@CategoryID",_CategoryID);			StoredProcedureParam[3]=MakeParameter("@SortOrder",_SortOrder);			StoredProcedureParam[4]=MakeParameter("@CategoryImage",(_CategoryImage==string.Empty? System.Convert.DBNull : _CategoryImage));			try			{				RunSqlCommand("[Update_ForumsCategory]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						return Res;						}					else						{							mReader.Close();							mReader=null;							return false;						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnDelete()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[1];			StoredProcedureParam[0]=MakeParameter("@CategoryID",_CategoryID);			try			{				RunSqlCommand("[Delete_ForumsCategory]",StoredProcedureParam,ref mReader);				bool Res=false;				if(mReader.Read())						Res=bool.Parse(mReader[0].ToString());				mReader.Close();				mReader=null;				this.Close();				return Res;			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		public new void Dispose()		{			base.Dispose();			//GC.SuppressFinalize(this);		}		public static Insight.Datasets.ForumsCategoryDS SelectAll()		{			 Insight.Datasets.ForumsCategoryDS ResDS=new Insight.Datasets.ForumsCategoryDS();			 RunStaticSqlCommand("Select * from ForumsCategory", ResDS,"ForumsCategory");			 return (Insight.Datasets.ForumsCategoryDS) ResDS ;		}		public static Insight.Datasets.ForumsCategoryDS SelectWhere(string FilterBy)		{			 Insight.Datasets.ForumsCategoryDS  ResDS=new Insight.Datasets.ForumsCategoryDS();			 RunStaticSqlCommand("Select * from ForumsCategory where " + FilterBy, ResDS, "ForumsCategory");			 return (Insight.Datasets.ForumsCategoryDS) ResDS ; 		}		#endregion	}}