using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 日程提配类型
    /// </summary>
    public enum EventRemindType:int
    {
        None=0,
        /// <summary>
        /// 1 邮件
        /// </summary>
        Email=1,
        /// <summary>
        /// 内部消息
        /// </summary>
        InternalMsg=2,
        /// <summary>
        /// 两者都有
        /// </summary>
        ALL=3


    }
}
