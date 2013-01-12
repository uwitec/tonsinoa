using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace TonSinOA
{
    public class TsOAPage
    {
        /// <summary>
        /// 没有权限
        /// </summary>
        /// <param name="page"></param>
        static public void ReturnNoPessionPage(System.Web.UI.Page page)
        {


            page.Response.Write("对不起，您没有权限访问该页面请与系统管理员联系！");

            page.Response.End();
        }
        /// <summary>
        /// 关闭当前页
        /// </summary>
        /// <param name="page"></param>
        static public void ClosePage(System.Web.UI.Page page)
        {
            page.Response.Write("<script>top.location='/';window.close();</script>");
            page.Response.End();
        }
        /// <summary>
        /// 在某个页面对象中显示消息框

        /// </summary>
        /// <param name="page">当前的页面对象</param>
        /// <param name="strMessage">要显示的消息</param>
        public static void ShowMsg(Page page, string msg)
        {
            string ScriptName = Guid.NewGuid().ToString();
            if (!page.ClientScript.IsStartupScriptRegistered(ScriptName))
            {
                page.ClientScript.RegisterStartupScript(page.GetType(), ScriptName, "alert('" + msg + "');", true);
            }

        }

        /// </summary>
        /// <param name="page">当前的页面对象</param>
        /// <param name="strMessage">要显示的消息</param>
        public static void ShowMsg(Page page, string msg, string backfunction)
        {
            string ScriptName = Guid.NewGuid().ToString();
            if (!page.ClientScript.IsStartupScriptRegistered(ScriptName))
            {
                page.ClientScript.RegisterStartupScript(page.GetType(), ScriptName, string.Format("alert('{0}');{1}", msg, backfunction), true);
            }

        }

        static public void ShowMsgRefresh(Page page, string msg)
        {
            string ScriptName = Guid.NewGuid().ToString();
            if (!page.ClientScript.IsStartupScriptRegistered(ScriptName))
            {
                string strScript = String.Format("alert(\"{0}\");art.dialog.close();var win = art.dialog.open.origin;win.location.reload(); ", msg);
                page.ClientScript.RegisterStartupScript(page.GetType(), ScriptName, strScript, true);
            }
        }

        static public void ShowMsgHref(Page page, string url, string msg)
        {
            page.Response.Write("<script> alert('" + msg + "');window.location.href='" + url + "';</script>");
            page.Response.End();
        }

        static public void ShowOk(Page page, string msg)
        {
            string ScriptName = Guid.NewGuid().ToString();
            if (!page.ClientScript.IsStartupScriptRegistered(ScriptName))
            {
                string strScript = String.Format("alert(\"{0}\");art.dialog.close(); ", msg);
                page.ClientScript.RegisterStartupScript(page.GetType(), ScriptName, strScript, true);
            }
        }
    }
}