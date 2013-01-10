using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
   public class ReplyInfo
    {
        /// <summary>
        /// 帖子ID
        /// </summary>
        public int PostID { get; set; }
        /// <summary>
        /// 回复ID
        /// </summary>
        public int ReplyID { get; set; }
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
        /// 回复时间
        /// </summary>
        public DateTime ReplyTime { get; set; }
        /// <summary>
        /// 回复人ID
        /// </summary>
        public int UserID { get; set; }
        /// <summary>
        /// 回复人姓名
        /// </summary>
        public string UserName { get; set; }
       /// <summary>
       /// 状态
       /// </summary>
        public int State { get; set; }
    }

   public class ReplyInfoEx : ReplyInfo
   {
       /// <summary>
       /// 帖子主题
       /// </summary>
       public string PostSubject { get; set; }
   }
}
