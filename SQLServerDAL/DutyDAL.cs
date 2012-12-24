using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using TonSinOA.DBUtility;
using TonSinOA.Utility;
using System.Reflection;
using TonSinOA.Model;
using System.Collections.Generic;
namespace TonSinOA.DAL
{
    public class DutyDAL
    {
        MssqlDatabase Mssql = null;
        public DutyDAL()
        {
            Mssql = new MssqlDatabase();
        }
        #region  Method
		/// <summary>
		/// 是否存在该记录
		/// </summary>
        public bool Exists(int DutyID, string DutyName)
        {
            string procName = "OA_SP_SM_Duty_Exists";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "检查职位是否已经存在";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;
            log.Append("DutyID", DutyID);
            log.Append("DutyName", DutyName);
            #endregion

            try
            {
                int rowsAffected;
                SqlParameter[] parameters = {
					new SqlParameter("@DutyID", SqlDbType.Int,4)
			};
                parameters[0].Value = DutyID;

                Mssql.ExecuteProc(procName, parameters, out rowsAffected);
                if (rowsAffected > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
            }
            return false;
        }

		/// <summary>
		///  增加一条数据
		/// </summary>
		public int Add(DutyInfo model)
		{
            string procName = "OA_SP_SM_Duty_ADD";
            LogBuilder log = new LogBuilder();
            #region 日志信息
            log.Desc = "添加职务";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DutyInfo", model);
            #endregion
            int DutyID = 0;
            try
            {
			int rowsAffected;
			SqlParameter[] parameters = {
					new SqlParameter("@DutyID", SqlDbType.Int,4),
					new SqlParameter("@DutyName", SqlDbType.VarChar,50),
					new SqlParameter("@DepID", SqlDbType.Int,4),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@State", SqlDbType.Int,4),
					new SqlParameter("@Created", SqlDbType.DateTime),
					new SqlParameter("@Creator", SqlDbType.Int,4)};
			parameters[0].Direction = ParameterDirection.Output;
			parameters[1].Value = model.DutyName;
			parameters[2].Value = model.DepID;
			parameters[3].Value = model.Remark;
			parameters[4].Value = model.State;
			parameters[5].Value = model.Created;
			parameters[6].Value = model.Creator;

			 Mssql.ExecuteProc(procName, parameters, out rowsAffected);
                if (rowsAffected > 0)
                {
                    if (parameters[0] != null)
                    {
                        DutyID = (int)parameters[0].Value;
                        log.Append("DutyID", DutyID, ParamDirection.OUT);
                    }
                }
            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
            }
            return DutyID;
		}

		/// <summary>
		///  更新一条数据
		/// </summary>
		public bool Update(DutyInfo model)
		{
            string procName = "OA_SP_SM_Duty_Update";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "更新职位";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DutyInfo", model);
            #endregion

            try
            {
			int rowsAffected=0;
			SqlParameter[] parameters = {
					new SqlParameter("@DutyID", SqlDbType.Int,4),
					new SqlParameter("@DutyName", SqlDbType.VarChar,50),
					new SqlParameter("@DepID", SqlDbType.Int,4),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@State", SqlDbType.Int,4),
					new SqlParameter("@Created", SqlDbType.DateTime),
					new SqlParameter("@Creator", SqlDbType.Int,4)};
			parameters[0].Value = model.DutyID;
			parameters[1].Value = model.DutyName;
			parameters[2].Value = model.DepID;
			parameters[3].Value = model.Remark;
			parameters[4].Value = model.State;
			parameters[5].Value = model.Created;
			parameters[6].Value = model.Creator;

            Mssql.ExecuteProc(procName, parameters, out rowsAffected);
            if (rowsAffected > 0)
            {
                return true;
            }

            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
            }
            return false;
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int DutyID)
		{
            string procName = "OA_SP_SM_Duty_Delete";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "删除职位";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DutyID", DutyID);
            #endregion

            try
            {
			int rowsAffected=0;
			SqlParameter[] parameters = {
					new SqlParameter("@DutyID", SqlDbType.Int,4)
			};
			parameters[0].Value = DutyID;

            Mssql.ExecuteProc(procName, parameters, out rowsAffected);
            if (rowsAffected > 0)
            {
                return true;
            }

            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
            }
            return false;
		}
		

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
        public DutyInfo GetDutyInfo(int DutyID)
		{
            DutyInfo model = null;
            string procName = "OA_SP_SM_Duty_GetModel";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "获取职位信息";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DutyID", DutyID);
            #endregion

            try
            {
			SqlParameter[] parameters = {
					new SqlParameter("@DutyID", SqlDbType.Int,4)
			};
			parameters[0].Value = DutyID;

            DataTable dt = Mssql.ExecuteProcDt(procName, parameters);
            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                model = new DutyInfo();
                model.DutyID = DutyID;
                model.DutyName = SqlComponents.ReaderGetString(dr["DutyName"]);
                model.DepID = SqlComponents.ReaderGetInt32(dr["DepID"]);
                model.Remark = SqlComponents.ReaderGetString(dr["Remark"]);
                model.State = SqlComponents.ReaderGetInt32(dr["State"]);
                return model;
            }
            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
            }
            return null;
		}



        /// <summary>
        /// 查询职位列表
        /// </summary>
        /// <param name="pageSize"></param>
        /// <param name="pageIndex"></param>
        /// <param name="totalRows"></param>
        /// <param name="ParentID">上级ID</param>
        /// <returns></returns>
        public IList<DutyInfo> GetList(int pageSize, int pageIndex, out int totalRows)
        {
            List<DutyInfo> DutyList = null;
            DutyInfo ui = null;
            totalRows = 0;
            MssqlDatabase database = null;
            LogBuilder log = new LogBuilder();
            try
            {
                string procName = "OA_SP_SM_Duty_GetList";
                #region 日志信息
                log.Desc = "查询职位列表";

                log.Method = MethodBase.GetCurrentMethod().Name;
                log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
                log.StroreProcedure = procName;

                log.Append("PageSize", pageSize.ToString());
                log.Append("PageIndex", pageIndex.ToString());
                
                #endregion

                SqlParameter[] param ={
                                           
                
                  database.MakeInParam("@PageSize", SqlDbType.Int,4, pageSize),                             
                  database.MakeInParam("@PageIndex", SqlDbType.Int,4,pageIndex),           
                  	
                  database.MakeOutParam("@TotalRows",SqlDbType.Int,4)         
                };
                DataTable dt = null;
                database.ExecuteProc(procName, param, out dt);
                totalRows = SqlComponents.ReaderGetInt32(param[3].Value);

                log.Append("TotalRows", totalRows.ToString(), ParamDirection.INOUT);

                if (dt != null && dt.Rows.Count > 0)
                {
                    DutyList = new List<DutyInfo>();
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        ui = new DutyInfo();
                        ui.RowId = SqlComponents.ReaderGetInt32(dt.Rows[i]["rowid"]);
                        ui.DepID = SqlComponents.ReaderGetInt32(dt.Rows[i]["DepID"]);
                        ui.DutyID = SqlComponents.ReaderGetInt32(dt.Rows[i]["DutyID"]);
                        ui.State = SqlComponents.ReaderGetInt32(dt.Rows[i]["State"]);
                        ui.DutyName = SqlComponents.ReaderGetString(dt.Rows[i]["DutyName"]);
                        ui.Remark = SqlComponents.ReaderGetString(dt.Rows[i]["Remark"]);
                        DutyList.Add(ui);
                    }
                }
                return DutyList;
            }
            catch (Exception ex)
            {
                log.Exception = ex.ToString();
                log.Error();
            }
            finally
            {
                log.Debug();
                if (database != null)
                {
                    database.Close();
                }
            }
            return null;
        }
        ///// <summary>
        ///// 获得前几行数据
        ///// </summary>
        //public DataSet GetList(int Top,string strWhere,string filedOrder)
        //{
        //    StringBuilder strSql=new StringBuilder();
        //    strSql.Append("select ");
        //    if(Top>0)
        //    {
        //        strSql.Append(" top "+Top.ToString());
        //    }
        //    strSql.Append(" DutyID,DutyName,DepID,Remark,State,Created,Creator ");
        //    strSql.Append(" FROM OA_TB_SM_Duty ");
        //    if(strWhere.Trim()!="")
        //    {
        //        strSql.Append(" where "+strWhere);
        //    }
        //    strSql.Append(" order by " + filedOrder);
        //    return DbHelperSQL.Query(strSql.ToString());
        //}

        ///// <summary>
        ///// 获取记录总数
        ///// </summary>
        //public int GetRecordCount(string strWhere)
        //{
        //    StringBuilder strSql=new StringBuilder();
        //    strSql.Append("select count(1) FROM OA_TB_SM_Duty ");
        //    if(strWhere.Trim()!="")
        //    {
        //        strSql.Append(" where "+strWhere);
        //    }
        //    object obj = DbHelperSQL.GetSingle(strSql.ToString());
        //    if (obj == null)
        //    {
        //        return 0;
        //    }
        //    else
        //    {
        //        return Convert.ToInt32(obj);
        //    }
        //}
        ///// <summary>
        ///// 分页获取数据列表
        ///// </summary>
        //public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        //{
        //    StringBuilder strSql=new StringBuilder();
        //    strSql.Append("SELECT * FROM ( ");
        //    strSql.Append(" SELECT ROW_NUMBER() OVER (");
        //    if (!string.IsNullOrEmpty(orderby.Trim()))
        //    {
        //        strSql.Append("order by T." + orderby );
        //    }
        //    else
        //    {
        //        strSql.Append("order by T.DutyID desc");
        //    }
        //    strSql.Append(")AS Row, T.*  from OA_TB_SM_Duty T ");
        //    if (!string.IsNullOrEmpty(strWhere.Trim()))
        //    {
        //        strSql.Append(" WHERE " + strWhere);
        //    }
        //    strSql.Append(" ) TT");
        //    strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
        //    return DbHelperSQL.Query(strSql.ToString());
        //}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "OA_TB_SM_Duty";
			parameters[1].Value = "DutyID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  Method

    }
}
