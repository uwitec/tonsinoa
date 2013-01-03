using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TonSinOA
{
    public class Global
    {
        #region 分页控件列表绑定
        public static void pagerbind(Wuqi.Webdiyer.AspNetPager AspNetPager1, int allcount, int pagecount)
        {

            AspNetPager1.RecordCount = allcount;
            AspNetPager1.CustomInfoHTML = "记录总数：<font color=\"blue\"><b>" + AspNetPager1.RecordCount.ToString() + "</b></font>";
            AspNetPager1.CustomInfoHTML += " 总页数：<font color=\"blue\"><b>" + AspNetPager1.PageCount.ToString() + "</b></font>";
            AspNetPager1.CustomInfoHTML += " 当前页：<font color=\"red\"><b>" + AspNetPager1.CurrentPageIndex.ToString() + "</b></font>";
        }
        #endregion

        public static string GetForumType(int type)
        {
           
            if(type==1)
            {
                return "../images/bbs/hotfolder.gif";
            }
            else
            {
                
                return "../images/bbs/vote.png";
            }
        }

        public static string GetFileTypeImg(string ext,int typeID)
        {
            string ret = "";
            if (typeID == 2)
            {
                switch (ext.ToLower())
                {
                    case "doc":
                    case "docx":
                        ret = "../images/fileExt/ms-word.gif";
                        break;
                    case "xls":
                    case "xlsx":
                        ret = "../images/fileExt/ms-excel.gif";
                        break;
                    case "ppt":
                    case "pptx":
                        ret = "../images/fileExt/ms-powerpoint.gif";
                        break;
                    case "zip":
                    case "rar":
                        ret = "../images/fileExt/archive.png";
                        break;
                    case "txt":
                    case "log":
                        ret = "../images/fileExt/document.gif";
                        break;
                    case "jpg":
                    case "jpeg":
                    case "gif":
                    case "png":
                    case "bmp":
                        ret = "../images/fileExt/image.gif";
                        break;
                    case "html":
                    case "htm":
                        ret = "../images/fileExt/html.gif";
                        break;
                    case "chm":
                        ret = "../images/fileExt/binary.gif";
                        break;
                    default:
                        ret = "../images/fileExt/binary.gif";
                        break;
                }
            }
            else
            {
                ret = "../images/fileExt/folder.big.gif";
            }
            return ret;
        }
    }
}