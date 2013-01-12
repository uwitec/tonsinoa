using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TonSinOA.Model;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 公告管理
    /// </summary>
    public class NoticeDAL
    {
        /// <summary>
        /// 分页获取公告通知列表
        /// </summary>
        /// <param name="PageSize"></param>
        /// <param name="PageIndex"></param>
        /// <param name="totalRows"></param>
        /// <returns></returns>
        public IList<NoticeInfo> GetNoticeList(int PageSize, int PageIndex, out int totalRows)
        {
            totalRows = 0;
            return null;
        }
  
        /// <summary>
        /// 添加通知或公告
        /// </summary>
        /// <param name="notice"></param>
        /// <param name="NoticeID"></param>
        /// <returns></returns>
        public bool AddNotice(NoticeInfo notice,out int NoticeID)
        {
            NoticeID = 0;
            return true;
        }
        /// <summary>
        /// 更新通知
        /// </summary>
        /// <param name="notice"></param>
        /// <returns></returns>
        public bool UpdateNotice(NoticeInfo notice)
        {
            return true;
        }
        /// <summary>
        /// 删除通知
        /// </summary>
        /// <param name="NodticeID"></param>
        /// <returns></returns>
        public bool DeleteNotice(int NodticeID)
        {
            return true;
        }
    }
}
