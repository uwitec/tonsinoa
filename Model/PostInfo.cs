using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 发帖子信息实体
    /// </summary>
   public class PostInfo
    {
       /// <summary>
       /// 帖子ID
       /// </summary>
       public int PostID { get; set; }
       /// <summary>
       /// 版块ID
       /// </summary>
       public int ForumID { get; set; }
       /// <summary>
       /// 版块名称
       /// </summary>
       public string ForumName { get; set; }
       /// <summary>
       /// 主题
       /// </summary>
       public string Subject { get; set; }
       /// <summary>
       /// 内容
       /// </summary>
       public string Content { get; set; }
       /// <summary>
       /// 是否有附件
       /// </summary>
       public bool IsAttach { get; set; }
       /// <summary>
       /// 发表时间
       /// </summary>
       public DateTime CreateTime { get; set; }
       /// <summary>
       /// 发帖人ID
       /// </summary>
       public int UserID { get; set; }
       /// <summary>
       /// 发帖人姓名
       /// </summary>
       public string UserName { get; set; }
       /// <summary>
       /// 类型 1 帖子 2 投票
       /// </summary>
       public int PostType { get; set; }
       /// <summary>
       /// 状态
       /// </summary>
       public int State { get; set; }

    }
}
