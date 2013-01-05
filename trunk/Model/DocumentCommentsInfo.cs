using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 文档评论信息
    /// </summary>
   public class DocumentCommentsInfo
    {
       public int SysID { get; set; }
       /// <summary>
       /// 文档编号
       /// </summary>
       public int DocID { get; set; }
       /// <summary>
       /// 大版本号
       /// </summary>
       public string BVersion { get; set; }
       /// <summary>
       /// 小版本号
       /// </summary>
       public string SVersion { get; set; }
       /// <summary>
       /// 评论内容
       /// </summary>
       public string Comments { get; set; }
       /// <summary>
       /// 评论时间
       /// </summary>
       public DateTime Created { get; set; }
       /// <summary>
       /// 评论人
       /// </summary>
 
       public int Creator { get; set; }
    }
}
