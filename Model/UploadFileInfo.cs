using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
    /// <summary>
    /// 文件上传实体
    /// </summary>
   public class UploadFileInfo
    {
       /// <summary>
       /// 原文件名称
       /// </summary>
       public string SrcFileName { get; set; }
       /// <summary>
       /// 浏览文件名称
       /// </summary>
       public string TranFileName { get; set; }

       /// <summary>
       /// 文件大小 KB
       /// </summary>
       public int FileSize { get; set; }
       /// <summary>
       /// 文件扩展名称不包括小数点
       /// </summary>
       public string FileExtName { get; set; }
       /// <summary>
       /// 文件路径名称
       /// </summary>
       public string FilePathName { get; set; }
    }
}
