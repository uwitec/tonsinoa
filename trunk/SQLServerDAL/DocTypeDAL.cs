using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TonSinOA.Model;
namespace TonSinOA.DAL
{
    /// <summary>
    /// 文档类型管理
    /// </summary>
    public class DocTypeDAL
    {
        /// <summary>
        /// 检查同一级下类型名称是否得重复
        /// </summary>
        /// <param name="TypeName"></param>
        /// <param name="TypeID"></param>
        /// <param name="ParentID"></param>
        /// <returns></returns>
        public bool Exists(string TypeName, int TypeID, int ParentID)
        {
            return true;
        }
        /// <summary>
        /// 新增文档类别
        /// </summary>
        /// <param name="docType"></param>
        /// <param name="TypeID"></param>
        /// <returns></returns>
        public bool AddDocType(DocTypeInfo docType, out int TypeID)
        {
            TypeID = 0;
            return true;
        }
        /// <summary>
        /// 更新文档类别
        /// </summary>
        /// <param name="docType"></param>
        /// <returns></returns>
        public bool UpdateDocType(DocTypeInfo docType)
        {
            return true;
        }
        /// <summary>
        /// 删除文档类别 如果下面有文件则不允许删除
        /// </summary>
        /// <param name="TypeID"></param>
        /// <returns></returns>
        public bool DeleteDocType(int TypeID)
        {
            return true;
        }
    }
}
