using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 用户组管理
    /// </summary>
   public class UserGoupDAL
    {
       /// <summary>
       /// 分页获取组列表
       /// </summary>
       /// <param name="PageSize"></param>
       /// <param name="PageIndex"></param>
       /// <param name="totalRows"></param>
       /// <returns></returns>
       public DataTable GetGroupList(int PageSize, int PageIndex, out int totalRows)
       {
           totalRows = 0;
           return null;
       }
       /// <summary>
       /// 检查组名是否已经存在 新增时GroupID 传0
       /// </summary>
       /// <param name="GroupID"></param>
       /// <param name="GroupIDName"></param>
       /// <returns></returns>
       public bool Exists(int GroupID, string GroupIDName)
       {
           return true;
       }
       /// <summary>
       /// 添加组
       /// </summary>
       /// <param name="UserID"></param>
       /// <param name="GroupName"></param>
       /// <param name="Remark"></param>
       /// <param name="State"></param>
       /// <param name="GroupID"></param>
       /// <returns></returns>
       public bool AddGroup(int UserID, string GroupName, string Remark, int State,out int GroupID)
       {
           GroupID = 0;
           return true;
       }
       /// <summary>
       /// 编辑组信息
       /// </summary>
       /// <param name="GroupID"></param>
       /// <param name="GroupName"></param>
       /// <param name="Remark"></param>
       /// <param name="State"></param>
       /// <returns></returns>
       public bool UpateGroup(int GroupID, string GroupName, string Remark, int State)
       {
           return true;
       }
       /// <summary>
       /// 删除组
       /// </summary>
       /// <param name="GroupID"></param>
       /// <returns></returns>
       public bool DeleteGroup(int GroupID)
       {
           return true;
       }
    }
}
