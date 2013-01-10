using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TonSinOA.Model;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 日程管理
    /// </summary>
    public class ScheduleDAL
    {
        /// <summary>
        /// 返回用户日程记录
        /// </summary>
        /// <param name="StartDate">开始时间</param>
        /// <param name="EndDate">结束时间</param>
        /// <returns></returns>
        public IList<EventInfo> GetUserEventList(int UserID,string StartDate, string EndDate)
        {
            return null;
        }
        /// <summary>
        /// 返回单个日程的信息
        /// </summary>
        /// <param name="EventID"></param>
        /// <returns></returns>
        public EventInfo GetEventInfo(int EventID)
        {
            return null;
        }
        /// <summary>
        /// 添加日程
        /// </summary>
        /// <param name="Event"></param>
        ///<param name="EventID">事件ID</param>
        /// <returns></returns>
        public bool AddEvent(EventInfo Event,out int EventID)
        {
            EventID=0;
            return false;
        }
        /// <summary>
        /// 编辑日程
        /// </summary>
        /// <param name="Event"></param>
        /// <returns></returns>
        public bool EditEvent(EventInfo Event)
        {
            return false;
        }
        /// <summary>
        /// 编辑日程
        /// </summary>
        /// <param name="EventID">事件ID</param>
        /// <returns></returns>
        public bool DeleteEvent(int EventID)
        {
            return false;
        }
        /// <summary>
        /// 添加事件共享人
        /// </summary>
        /// <param name="EventID"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool AddEventShare(int EventID, int UserID)
        {
            return false;
        }
    }
}
