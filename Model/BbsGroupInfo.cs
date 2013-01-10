using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
   public class BbsGroupInfo
    {
       /// <summary>
       /// 组ID
       /// </summary>
       public int GroupID { get; set; }
       /// <summary>
       /// 组名称
       /// </summary>
       public string GroupName { get; set; }
       /// <summary>
       /// 描述
       /// </summary>
       public string Description { get; set; }
       /// <summary>
       /// 创建人ID
       /// </summary>
       public int UserID { get; set; }
       /// <summary>
       /// 创建人名称
       /// </summary>
       public string UserName { get; set; }
       /// <summary>
       /// 创建时间
       /// </summary>
       public DateTime CreateTime { get; set; }
    }
}
