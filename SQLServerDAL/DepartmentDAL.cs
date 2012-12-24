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
    /// <summary>
    /// ���ݷ�����:DepartmentDAL
    /// </summary>
    public partial class DepartmentDAL
    {
        MssqlDatabase Mssql = null;
        public DepartmentDAL()
        {
            Mssql = new MssqlDatabase();
        }
        #region  Method
        /// <summary>
        /// ��鲿���Ƿ��Ѿ�����
        /// </summary>
        /// <param name="DepID">����ʱ��0 </param>
        /// <param name="DepName"></param>
        /// <returns></returns>
        public bool Exists(int DepID, int DepName)
        {
            string procName = "OA_SP_SM_Department_Exists";
            LogBuilder log = new LogBuilder();

            #region ��־��Ϣ
            log.Desc = "��鲿���Ƿ��Ѿ�����";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;
            log.Append("DepID", DepID);
            log.Append("DeptName", DepName);
            #endregion

            try
            {
                int rowsAffected = 0;
                SqlParameter[] parameters = {
					new SqlParameter("@DepID", SqlDbType.Int,4),
					new SqlParameter("@DepName", SqlDbType.VarChar,50)};
					
                parameters[0].Value = DepID;
                parameters[1].Value = DepName;


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
        ///  ����һ������
        /// </summary>
        public int Add(DepartmentInfo model)
        {
            string procName = "OA_SP_SM_Department_ADD";
            LogBuilder log = new LogBuilder();
            #region ��־��Ϣ
            log.Desc = "��Ӳ���";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DepartmentInfo", model);
            #endregion
            int DeptID = 0;
            try
            {
                int rowsAffected;
                SqlParameter[] parameters = {
					new SqlParameter("@DepID", SqlDbType.Int,4),
					new SqlParameter("@DepName", SqlDbType.VarChar,50),
					new SqlParameter("@ParentID", SqlDbType.Int,4),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@State", SqlDbType.Int,4),
					new SqlParameter("@Creator", SqlDbType.Int,4)};
                parameters[0].Direction = ParameterDirection.Output;
                parameters[1].Value = model.DepName;
                parameters[2].Value = model.ParentID;
                parameters[3].Value = model.Remark;
                parameters[4].Value = model.State;
                parameters[5].Value = model.Creator;


                Mssql.ExecuteProc(procName, parameters, out rowsAffected);
                if (rowsAffected > 0)
                {
                    if (parameters[0] != null)
                    {
                        DeptID = (int)parameters[0].Value;
                        log.Append("DeptID", DeptID, ParamDirection.OUT);
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
            return DeptID;
        }

        /// <summary>
        ///  ����һ������
        /// </summary>
        public bool Update(DepartmentInfo model)
        {
            string procName = "OA_SP_SM_Department_Update";
            LogBuilder log = new LogBuilder();

            #region ��־��Ϣ
            log.Desc = "���²���";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DepartmentInfo", model);
            #endregion

            try
            {
                int rowsAffected = 0;
                SqlParameter[] parameters = {
					new SqlParameter("@DepID", SqlDbType.Int,4),
					new SqlParameter("@DepName", SqlDbType.VarChar,50),
					new SqlParameter("@ParentID", SqlDbType.Int,4),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@State", SqlDbType.Int,4),
					new SqlParameter("@Creator", SqlDbType.Int,4)};
                parameters[0].Value = model.DepID;
                parameters[1].Value = model.DepName;
                parameters[2].Value = model.ParentID;
                parameters[3].Value = model.Remark;
                parameters[4].Value = model.State;
                parameters[5].Value = model.Creator;

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
        /// ɾ��һ������
        /// </summary>
        public bool Delete(int DepID)
        {
            string procName = "OA_SP_OA_Department_Delete";
            LogBuilder log = new LogBuilder();

            #region ��־��Ϣ
            log.Desc = "���²���";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DepID", DepID);
            #endregion

            try
            {
                int rowsAffected = 0;
                SqlParameter[] parameters = {
					new SqlParameter("@DepID", SqlDbType.Int,4)
			};
                parameters[0].Value = DepID;

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
        /// �õ�һ������ʵ��
        /// </summary>
        public DepartmentInfo GetDepartmentInfo(int DepID)
        {
            DepartmentInfo model = null;
            string procName = "OA_SP_SM_Department_GetModel";
            LogBuilder log = new LogBuilder();

            #region ��־��Ϣ
            log.Desc = "��ȡ������Ϣ";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("DepID", DepID);
            #endregion

            try
            {

                SqlParameter[] parameters = {
					new SqlParameter("@DepID", SqlDbType.Int,4)
			};
                parameters[0].Value = DepID;


                DataTable dt = Mssql.ExecuteProcDt(procName, parameters);
                if (dt != null && dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    model = new DepartmentInfo();
                    model.DepID = DepID;
                    model.DepName = SqlComponents.ReaderGetString(dr["DepName"]);
                    model.ParentID = SqlComponents.ReaderGetInt32(dr["ParentID"]);
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
        /// ��ѯ�����б�
        /// </summary>
        /// <param name="pageSize"></param>
        /// <param name="pageIndex"></param>
        /// <param name="totalRows"></param>
        /// <param name="ParentID">�ϼ�ID</param>
        /// <returns></returns>
        public IList<DepartmentInfo> GetList(int pageSize, int pageIndex, out int totalRows,int ParentID=-1)
        {
            List<DepartmentInfo> DeparList = null;
            DepartmentInfo ui = null;
            totalRows = 0;
            MssqlDatabase database = null;
            LogBuilder log = new LogBuilder();
            try
            {
                string procName = "OA_SP_SM_Department_GetList";
                #region ��־��Ϣ
                log.Desc = "��ò��������б�";
               
                log.Method = MethodBase.GetCurrentMethod().Name;
                log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
                log.StroreProcedure = procName;

                log.Append("PageSize", pageSize.ToString());
                log.Append("PageIndex", pageIndex.ToString());
                log.Append("ParentID", ParentID.ToString());
                #endregion

                SqlParameter[] param ={
                                           
                 database.MakeInParam("@ParentID",SqlDbType.Int,4,ParentID), 
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
                    DeparList = new List<DepartmentInfo>();
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        ui = new DepartmentInfo();
                        ui.RowId = SqlComponents.ReaderGetInt32(dt.Rows[i]["rowid"]);
                        ui.DepID = SqlComponents.ReaderGetInt32(dt.Rows[i]["DepID"]);
                        ui.ParentID = SqlComponents.ReaderGetInt32(dt.Rows[i]["ParentID"]);
                        ui.State = SqlComponents.ReaderGetInt32(dt.Rows[i]["State"]);
                        ui.DepName = SqlComponents.ReaderGetString(dt.Rows[i]["DepName"]);
                        ui.Remark = SqlComponents.ReaderGetString(dt.Rows[i]["Remark"]);
                        DeparList.Add(ui);
                    }
                }
                return DeparList;
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
        ///// ���ǰ��������
        ///// </summary>
        //public DataSet GetList(int Top, string strWhere, string filedOrder)
        //{
        //    StringBuilder strSql = new StringBuilder();
        //    strSql.Append("select ");
        //    if (Top > 0)
        //    {
        //        strSql.Append(" top " + Top.ToString());
        //    }
        //    strSql.Append(" DepID,DepName,ParentID,Remark,State,Creator ");
        //    strSql.Append(" FROM OA_TB_SM_Department ");
        //    if (strWhere.Trim() != "")
        //    {
        //        strSql.Append(" where " + strWhere);
        //    }
        //    strSql.Append(" order by " + filedOrder);
        //    return DbHelperSQL.Query(strSql.ToString());
        //}

        ///// <summary>
        ///// ��ȡ��¼����
        ///// </summary>
        //public int GetRecordCount(string strWhere)
        //{
        //    StringBuilder strSql = new StringBuilder();
        //    strSql.Append("select count(1) FROM OA_TB_SM_Department ");
        //    if (strWhere.Trim() != "")
        //    {
        //        strSql.Append(" where " + strWhere);
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
        ///// ��ҳ��ȡ�����б�
        ///// </summary>
        //public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        //{
        //    StringBuilder strSql = new StringBuilder();
        //    strSql.Append("SELECT * FROM ( ");
        //    strSql.Append(" SELECT ROW_NUMBER() OVER (");
        //    if (!string.IsNullOrEmpty(orderby.Trim()))
        //    {
        //        strSql.Append("order by T." + orderby);
        //    }
        //    else
        //    {
        //        strSql.Append("order by T.DepID desc");
        //    }
        //    strSql.Append(")AS Row, T.*  from OA_TB_SM_Department T ");
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
        /// ��ҳ��ȡ�����б�
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
            parameters[0].Value = "OA_TB_SM_Department";
            parameters[1].Value = "DepID";
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

