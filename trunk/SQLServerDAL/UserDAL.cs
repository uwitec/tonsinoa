using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TonSinOA.Model;
using TonSinOA.DBUtility;
using System.Data.SqlClient;
using System.Reflection;
using TonSinOA.Utility;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 用户管理
    /// </summary>
    public class UserDAL
    {
        MssqlDatabase Mssql = null;

        public UserDAL()
        {
            Mssql = new MssqlDatabase();
        }

        /// <summary>
        /// 分页获取用户列表(包含部门信息、职务信息）
        /// </summary>
        /// <param name="PageSize"></param>
        /// <param name="PageIndex"></param>
        /// <param name="totalRows"></param>
        /// <returns></returns>
        public DataTable GetUserList(int PageSize, int PageIndex, out int totalRows)
        {
            totalRows = 0;
            return null;
        }
        /// <summary>
        /// 添加用用户信息
        /// </summary>
        /// <param name="user"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool AddUser(UserInfo user, out int UserID)
        {
            UserID = 0;
            string procName = "OA_SP_SM_User_Add";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "添加用用户信息";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;
            log.Append("UserInfo", user);

            #endregion

            try
            {
                int rowsAffected;
                SqlParameter[] parameters = {
					new SqlParameter("@UserAccount", SqlDbType.VarChar,50),
					new SqlParameter("@Pwd", SqlDbType.VarChar,50),
					new SqlParameter("@UserName", SqlDbType.VarChar,50),
					new SqlParameter("@DepID", SqlDbType.Int,10),
					new SqlParameter("@DutyID", SqlDbType.Int,10),
					new SqlParameter("@Email", SqlDbType.VarChar,100),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@Creator", SqlDbType.Int,10),
					new SqlParameter("@UserID", SqlDbType.Int,10)
			};
                parameters[0].Value = user.UserAccount;
                parameters[1].Value = user.Pwd;
                parameters[2].Value = user.UserName;
                parameters[3].Value = user.DepID;
                parameters[4].Value = user.DutyID;
                parameters[5].Value = user.Email;
                parameters[6].Value = user.Remark;
                parameters[7].Value = user.Creator;
                parameters[8].Direction = ParameterDirection.Output;

                Mssql.ExecuteProc(procName, parameters, out rowsAffected);
                if (rowsAffected > 0)
                {
                    if (parameters[0] != null)
                    {
                        UserID = (int)parameters[8].Value;
                        log.Append("UserID", UserID, ParamDirection.OUT);
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
            return UserID > 0;
        }

        /// <summary>
        /// 编辑用户信息
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public bool UpdateUser(UserInfo user)
        {
            string procName = "OA_SP_SM_User_Update";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "更新职位";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("UserInfo", user);
            #endregion

            try
            {
                int rowsAffected = 0;
                SqlParameter[] parameters = {
					new SqlParameter("@UserID", SqlDbType.Int,10),
					new SqlParameter("@UserName", SqlDbType.VarChar,50),
					new SqlParameter("@DepID", SqlDbType.Int,10),
					new SqlParameter("@DutyID", SqlDbType.Int,10),
					new SqlParameter("@Email", SqlDbType.VarChar,100),
					new SqlParameter("@Remark", SqlDbType.VarChar,200),
					new SqlParameter("@Modifier", SqlDbType.Int,10)};
                parameters[0].Value = user.UserID;
                parameters[1].Value = user.UserName;
                parameters[2].Value = user.DepID;
                parameters[3].Value = user.DutyID;
                parameters[4].Value = user.Email;
                parameters[5].Value = user.Remark;
                parameters[6].Value = user.Creator;

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
        /// 删除用户
        /// </summary>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool DeleteUser(int UserID)
        {
            string procName = "OA_SP_SM_User_Delete";
            LogBuilder log = new LogBuilder();

            #region 日志信息
            log.Desc = "删除用户";

            log.Method = MethodBase.GetCurrentMethod().Name;
            log.Path = MethodBase.GetCurrentMethod().DeclaringType.FullName;
            log.StroreProcedure = procName;

            log.Append("UserID", UserID);
            #endregion

            try
            {
                int rowsAffected = 0;
                SqlParameter[] parameters = {
					new SqlParameter("@UserID", SqlDbType.Int,10)
			    };
                parameters[0].Value = UserID;

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
        /// 添加用户和角色对应关系表
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <param name="RoleIDList">角色ID 支持多个</param>
        /// <returns></returns>
        public bool AddRoleToUser(int UserID, List<int> RoleID)
        {
            return false;
        }

        /// <summary>
        /// 添加权限到用户
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <param name="FuncID">权限ID 支持多个</param>
        /// <returns></returns>
        public bool AddFuncsToUser(int UserID, List<int> FuncID)
        {
            return true;
        }

        /// <summary>
        /// 添加组到用户
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <param name="GroupID">组ID 支持多个</param>
        /// <returns></returns>
        public bool AddGroupToUser(int UserID, List<int> GroupID)
        {
            return true;
        }
    }
}