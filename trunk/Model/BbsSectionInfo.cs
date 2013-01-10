using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 版块信息实体
    /// </summary>
   public class BbsSectionInfo
    {
        /// <summary>
        /// 组ID
        /// </summary>
        public int GroupID { get; set; }
        /// <summary>
        /// 版块ID
        /// </summary>
        public int ForumID { get; set; }
        /// <summary>
        /// 版块名称
        /// </summary>
        public string ForumName { get; set; }
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
       /// <summary>
       /// 总帖子数
       /// </summary>
        public int PostSum { get; set; }
       /// <summary>
       /// 今日帖子数
       /// </summary>
        public int TodaySum { get; set; }
    }
}
