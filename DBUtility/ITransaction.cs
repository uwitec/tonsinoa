////==========================================================================
////类名:DBUtility\ITransaction.cs
////
////功能描述：数据库访问事务接口
////历史记录：
//// NO        日期          版本       姓名            内容
////--------------------------------------------------------------------------
//// 1         2012-12-22    V1.0      jimlly           
////==========================================================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.DBUtility
{
   public interface ITransaction
    {
        /// <summary>
        /// 开始事务处理
        /// </summary>
        void BeginTrans();

        /// <summary>
        /// 提交事务处理
        /// </summary>
        void CommitTrans();

        /// <summary>
        /// 回滚事务处理
        /// </summary>
        void RollbackTrans();

        /// <summary>
        /// 获取在同一个事务处理中的连接
        /// </summary>
        IDatabase dataAccess { get; }
    }
}
