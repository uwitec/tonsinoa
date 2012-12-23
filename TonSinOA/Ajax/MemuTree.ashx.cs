using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TonSinOA.Model;
using TonSinOA.Utility;

namespace TonSinOA.Ajax
{
    /// <summary>
    /// MemuTree 的摘要说明
    /// </summary>
    public class MemuTree : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
             string param =context.Request["Param"];
             if (param == "0")
             {
                 List<ExtTreeNode> nodes = new List<ExtTreeNode>();

                 nodes.Add(new ExtTreeNode() { TypeTitle = "文档管理", TypeEName = "文档管理", text = "文档管理", TypeID = "1", id = "1", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "工作总结", TypeEName = "工作总结", text = "工作总结", TypeID = "2", id = "2", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "工作日历", TypeEName = "工作日历", text = "工作日历", TypeID = "3", id = "3", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "项目管理", TypeEName = "项目管理", text = "项目管理", TypeID = "4", id = "4", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "事项跟踪", TypeEName = "事项跟踪", text = "事项跟踪", TypeID = "5", id = "5", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "系统设置", TypeEName = "系统设置", text = "系统设置", TypeID = "6", id = "6", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0" });
                 string json = JsonHelper.SerializeObject(nodes);

                 context.Response.Write(json);
             }
             else
             {
                 context.Response.Write("");
             }
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}