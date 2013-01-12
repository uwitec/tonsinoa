using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 投票信息实体
    /// </summary>
    public class PollInfo
    {
        /// <summary>
        /// 投票ID
        /// </summary>
        public int PollID { get; set; }
        /// <summary>
        /// 帖子ID
        /// </summary>
        public int PostID { get; set; }

        /// <summary>
        /// 主题
        /// </summary>
        public string Subject { get; set; }
        /// <summary>
        /// 投票类型 1 单选 2 多选
        /// </summary>
        public int PollType { get; set; }
        /// <summary>
        /// 是否允许投票前查看结果
        /// </summary>
        public bool IsBeforeLook { get; set; }
        /// <summary>
        /// 过期时间
        /// </summary>
        public DateTime ExpirationTime { get; set; }

        /// <summary>
        /// 最大投票数
        /// </summary>
        public int MaxChoices { get; set; }

        public int UserID { get; set; }
        /// <summary>
        /// 投票选项集合
        /// </summary>
        public PolloptionInfo[] PollOptions { get; set; }
    }
    /// <summary>
    /// 投票选项实体
    /// </summary>
    public class PolloptionInfo
    {
        public int PollID { get; set; }
        /// <summary>
        /// 内容
        /// </summary>
        public string Content { get; set; }
        /// <summary>
        /// 排序
        /// </summary>
        public int SortOrder { get; set; }
    }
}
