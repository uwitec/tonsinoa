using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 登录Session信息实体
    /// </summary>
   public class LoginInfo
    {
       /// <summary>
       /// 用户ID
       /// </summary>
       public int UserID { get; set; }
       /// <summary>
       /// 用户姓名
       /// </summary>
       public string UserName { get; set; }
       /// <summary>
       /// 用户账号
       /// </summary>
       public string UserAccount { get; set; }
       /// <summary>
       /// 是否为系统管理员
       /// </summary>
       public bool IsAdmin { get; set; }
       /// <summary>
       /// 权限列表
       /// </summary>
       public int[] FunsList { get; set; } 
    }
}
