using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
namespace TonSinOA.Model
{
    //OA_TB_SM_DocType
    /// <summary>
    /// 文档类型实体
    /// </summary>
    public class DocTypeInfo
    {

        /// <summary>
        /// TypeID
        /// </summary>
        public int TypeID { get; set; }
        /// <summary>
        /// TypeName
        /// </summary>
        public string TypeName { get; set; }
        /// <summary>
        /// Remark
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// ParentID
        /// </summary>
        public int ParentID { get; set; }
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

