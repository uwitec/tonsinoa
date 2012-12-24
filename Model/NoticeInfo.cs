using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
namespace TonSinOA.Model
{
    //OA_TB_SM_Notice
    /// <summary>
    /// 公告实体
    /// </summary>
    public class NoticeInfo
    {

        /// <summary>
        /// NoticeID
        /// </summary>
        public int NoticeID { get; set; }
        /// <summary>
        /// TypeID
        /// </summary>
        public int TypeID { get; set; }
        /// <summary>
        /// Title
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Body
        /// </summary>
        public string Body { get; set; }
        /// <summary>
        /// 0.不置顶 1.置顶
        /// </summary>
        public int IsTop { get; set; }
        /// <summary>
        /// 填写部门编号，多个用“,”分隔
        /// </summary>
        public string Receviers { get; set; }
        /// <summary>
        /// Created
        /// </summary>
        public DateTime Created { get; set; }
        /// <summary>
        /// Creator
        /// </summary>
        public int Creator { get; set; }

    }
}

