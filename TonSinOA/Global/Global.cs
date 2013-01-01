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
    }
}