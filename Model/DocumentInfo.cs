using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    public class DocumentInfo
    {
        /// <summary>
        /// 文档编号
        /// </summary>
        public int DocID { get; set; }
        /// <summary>
        /// 文档分类ID
        /// </summary>
        public int DocTypeID { get; set; }

        /// <summary>
        /// 发布人ID
        /// </summary>
        public int UserID { get; set; }
        /// <summary>
        /// 文档状态
        /// </summary>
        public int State { get; set; }
        /// <summary>
        /// 版本号
        /// </summary>
        public int Version { get; set; }

        
    }
}
