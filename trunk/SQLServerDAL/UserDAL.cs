using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TonSinOA.Model;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 用户管理
    /// </summary>
   public class UserDAL
    {
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
           return true;
       }
       /// <summary>
       /// 编辑用户信息
       /// </summary>
       /// <param name="user"></param>
       /// <returns></returns>
       public bool UpdateUser(UserInfo user)
       {
           return true;
       }
       /// <summary>
       /// 删除用户
       /// </summary>
       /// <param name="UserID"></param>
       /// <returns></returns>
       public bool DeleteUser(int UserID)
       {
           return true;
       }
       /// <summary>
       /// 添加用户和角色对应关系表
       /// </summary>
       /// <param name="UserID">用户ID</param>
       /// <param name="RoleIDList">角色ID 支持多个</param>
       /// <returns></returns>
       public bool AddRoleToUser(int UserID,List<int> RoleID)
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