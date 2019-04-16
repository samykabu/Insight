using System;using System.Text;using System.Data;using System.Data.SqlClient;using System.Collections.Generic;using System.Xml.Serialization;namespace Insight 	{	[Serializable]	 public partial  class ForumsBoard:Insight.DataBaseObject,IDisposable	{		#region Private Variables		private string _MembershipAPPNAme;		private string _Name;		private bool _AllowThreaded;		private Int64 _BoardID;		private string _RoleAppName;		#endregion		#region Public properties		/// <summary>		///   No Description Implemented		/// </summary>		public string MembershipAPPNAme		{			 get { return _MembershipAPPNAme; }			 set { _MembershipAPPNAme=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public string Name		{			 get { return _Name; }			 set { _Name=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public bool AllowThreaded		{			 get { return _AllowThreaded; }			 set { _AllowThreaded=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public Int64 BoardID		{			 get { return _BoardID; }			 set { _BoardID=value; }		}		/// <summary>		///   No Description Implemented		/// </summary>		public string RoleAppName		{			 get { return _RoleAppName; }			 set { _RoleAppName=value; }		}		#endregion		#region methods	#region Events		 public List<ValidateRecord> ValidationSummary = new List<ValidateRecord>();	#endregion		public ForumsBoard()		{			TableName="ForumsBoard";		}		public ForumsBoard(Int64 BoardID)		{			TableName="ForumsBoard";			_BoardID=BoardID;			LoadByPrimaryKey();		}		public override string ToString()		{			XmlSerializer xml = new XmlSerializer(typeof(ForumsBoard));			StringBuilder outstr = new StringBuilder();			System.IO.TextWriter textwriter = new System.IO.StringWriter(outstr);			xml.Serialize(textwriter, this);			xml = null;			textwriter.Flush();			textwriter.Close();			textwriter = null;			return outstr.ToString();		}		public ForumsBoard Clone()		{			XmlSerializer xml = new XmlSerializer(typeof(ForumsBoard));			System.IO.TextReader textreader = new System.IO.StringReader(this.ToString());			return (ForumsBoard)xml.Deserialize(textreader);		}		public void LoadByPrimaryKey()		{			DataSet Internalds=new DataSet();			this.RunSqlCommand("Select * from ForumsBoard where BoardID="+_BoardID.ToString() , Internalds);			if (Internalds!=null && Internalds.Tables[0].Rows.Count>0)			{				_MembershipAPPNAme =(string) Internalds.Tables[0].Rows[0]["MembershipAPPNAme"];				_Name =(string) Internalds.Tables[0].Rows[0]["Name"];				_AllowThreaded =(bool) Internalds.Tables[0].Rows[0]["AllowThreaded"];				_BoardID =(Int64) Internalds.Tables[0].Rows[0]["BoardID"];				_RoleAppName =(string) Internalds.Tables[0].Rows[0]["RoleAppName"];				Internalds.Dispose();				this.Close();			}			else			{				this.Close();			}		}		protected override void OnValidate()		{			ValidationSummary.Clear();			if (_MembershipAPPNAme==string.Empty)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "MembershipAPPNAme Value can not be null ",PropertyName = "MembershipAPPNAme",ValidationError = " " });				 //throw new Exception("MembershipAPPNAme Value can not be null");			}			if (_Name==string.Empty)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "Name Value can not be null ",PropertyName = "Name",ValidationError = " " });				 //throw new Exception("Name Value can not be null");			}			if (_RoleAppName==string.Empty)			{				ValidationSummary.Add	(new ValidateRecord	(){ Message = "RoleAppName Value can not be null ",PropertyName = "RoleAppName",ValidationError = " " });				 //throw new Exception("RoleAppName Value can not be null");			}			if (ValidationSummary.Count>0)				throw new ValidationException("Missing Properties", ValidationSummary);		}		protected override bool OnInsert()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[4];			StoredProcedureParam[0]=MakeParameter("@MembershipAPPNAme",_MembershipAPPNAme);			StoredProcedureParam[1]=MakeParameter("@Name",_Name);			StoredProcedureParam[2]=MakeParameter("@AllowThreaded",_AllowThreaded);			StoredProcedureParam[3]=MakeParameter("@RoleAppName",_RoleAppName);			try			{				RunSqlCommand("[Insert_ForumsBoard]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						Int64 Ident=Int64.Parse(mReader[1].ToString());						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						_BoardID=Ident;						return Res;						}					else						{							mReader.Close();							mReader=null;							throw new Exception("Data Reader is null");						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnUpdate()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[5];			StoredProcedureParam[0]=MakeParameter("@MembershipAPPNAme",_MembershipAPPNAme);			StoredProcedureParam[1]=MakeParameter("@Name",_Name);			StoredProcedureParam[2]=MakeParameter("@AllowThreaded",_AllowThreaded);			StoredProcedureParam[3]=MakeParameter("@BoardID",_BoardID);			StoredProcedureParam[4]=MakeParameter("@RoleAppName",_RoleAppName);			try			{				RunSqlCommand("[Update_ForumsBoard]",StoredProcedureParam,ref mReader);				if(mReader!=null)					{						if(mReader.Read())						{						bool Res = bool.Parse(mReader[0].ToString());						mReader.Close();						mReader=null;						this.Close();						return Res;						}					else						{							mReader.Close();							mReader=null;							return false;						}					}					else					{						 throw new Exception("Data Reader is null");					}			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		protected override bool OnDelete()		{			SqlDataReader mReader=null;			SqlParameter[] StoredProcedureParam=new SqlParameter[1];			StoredProcedureParam[0]=MakeParameter("@BoardID",_BoardID);			try			{				RunSqlCommand("[Delete_ForumsBoard]",StoredProcedureParam,ref mReader);				bool Res=false;				if(mReader.Read())						Res=bool.Parse(mReader[0].ToString());				mReader.Close();				mReader=null;				this.Close();				return Res;			}				catch (Exception ex)			{				if(mReader!=null)					mReader=null;					this.Close();				throw ex;			}		}		public new void Dispose()		{			base.Dispose();			//GC.SuppressFinalize(this);		}		public static Insight.Datasets.ForumsBoardDS SelectAll()		{			 Insight.Datasets.ForumsBoardDS ResDS=new Insight.Datasets.ForumsBoardDS();			 RunStaticSqlCommand("Select * from ForumsBoard", ResDS,"ForumsBoard");			 return (Insight.Datasets.ForumsBoardDS) ResDS ;		}		public static Insight.Datasets.ForumsBoardDS SelectWhere(string FilterBy)		{			 Insight.Datasets.ForumsBoardDS  ResDS=new Insight.Datasets.ForumsBoardDS();			 RunStaticSqlCommand("Select * from ForumsBoard where " + FilterBy, ResDS, "ForumsBoard");			 return (Insight.Datasets.ForumsBoardDS) ResDS ; 		}		#endregion	}}