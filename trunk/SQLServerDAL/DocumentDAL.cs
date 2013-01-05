using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TonSinOA.Model;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 文档管理数据处理
    /// </summary>
   public class DocumentDAL
    {
       /// <summary>
       /// 获取文档分类列表
       /// </summary>
       /// <param name="ParentID">父级编号</param>
       /// <returns></returns>
       public DataTable GetDocTypeList(int ParentID)
       {
           return null;
       }
       /// <summary>
       /// 获取某类别下的所有文档
       /// </summary>
       /// <param name="TypeID">文档类型编号</param>
       /// <returns></returns>
       public DataTable GetFiles(int TypeID)
       {
           return null;
       }
       /// <summary>
       /// 获取单个文档的所有版本信息列表
       /// </summary>
       /// <param name="DocID">文档编号</param>
       /// <returns></returns>
       public DataTable GetFileVersionList(int DocID)
       {
           return null;
       }
       /// <summary>
       /// 获取文档的评论信息列表
       /// </summary>
       /// <param name="DocID"></param>
       /// <returns></returns>
       public DataTable GetFileComments(int DocID)
       {
           return null;
       }
       /// <summary>
       /// 返回文档信息
       /// </summary>
       /// <param name="DocID"></param>
       /// <returns></returns>
       public DocumentInfo GetDocumentInfo(int DocID)
       {
           return null;
       }
       /// <summary>
       /// 上传文档
       /// </summary>
       /// <param name="file"></param>
       /// <param name="UserID">上传人ID</param>
       /// <param name="TypeID">文档分类型ID</param>
       /// <returns></returns>
       public bool UpLoadDocument(UploadFileInfo file,int UserID,int TypeID)
       {
           return false;
       }
       /// <summary>
       /// 删除文档
       /// </summary>
       /// <param name="UserID"></param>
       /// <param name="DocID"></param>
       /// <returns></returns>
       public bool DeleteDocument(int UserID, int DocID)
       {
           return false;
       }
       /// <summary>
       /// 添加文档评论
       /// </summary>
       /// <param name="comments"></param>
       /// <returns></returns>
       public bool AddDocumentComments(DocumentCommentsInfo comments)
       {
           return false;
       }
       /// <summary>
       /// 删除文档评论
       /// </summary>
       /// <param name="CommentsID"></param>
       /// <returns></returns>
       public bool DelDoumentComments(int CommentsID)
       {
           return false;
       }
    }
}
