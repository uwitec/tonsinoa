using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
namespace TonSinOA.Model
{
    //OA_TB_SM_Department
    /// <summary>
    /// 部门实体
    /// </summary>
    public class DepartmentInfo
    {
        public int RowId { get; set; }
        /// <summary>
        /// DepID
        /// </summary>
        public int DepID { get; set; }
        /// <summary>
        /// DepName
        /// </summary>
        public string DepName { get; set; }
        /// <summary>
        /// ParentID
        /// </summary>
        public int ParentID { get; set; }
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

