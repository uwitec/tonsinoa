using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
namespace TonSinOA.Model
{
    //OA_TB_SM_Duty
    /// <summary>
    /// 职位实体
    /// </summary>
    public class DutyInfo
    {
        public int RowId { get; set; }
        /// <summary>
        /// DutyID
        /// </summary>
        public int DutyID { get; set; }
        /// <summary>
        /// DutyName
        /// </summary>
        public string DutyName { get; set; }
        /// <summary>
        /// DepID
        /// </summary>
        public int DepID { get; set; }
        /// <summary>
        /// Remark
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// 0.禁用 1.启用
        /// </summary>
        public int State { get; set; }
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

