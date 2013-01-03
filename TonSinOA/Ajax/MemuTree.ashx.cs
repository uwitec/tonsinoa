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
             string param =context.Request["p"];
            string node = context.Request["node"];
             if (param == "root")
             {
                 List<ExtTreeNode> nodes = new List<ExtTreeNode>();

                 nodes.Add(new ExtTreeNode() { TypeTitle = "文档管理", TypeEName = "文档管理", text = "文档管理", TypeID = "1", id = "1", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0",iconCls="weidang_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "工作报告总结", TypeEName = "工作报告总结", text = "工作报告总结", TypeID = "2", id = "2", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0",iconCls="workbaogao_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "工作日历", TypeEName = "工作日历", text = "工作日历", TypeID = "3", id = "3", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0",iconCls="workdate_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "项目管理", TypeEName = "项目管理", text = "项目管理", TypeID = "4", id = "4", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0",iconCls="project_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "内部论坛", TypeEName = "内部论坛", text = "内部论坛", TypeID = "5", id = "5", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0", iconCls = "bbs_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "消息管理", TypeEName = "消息管理", text = "消息管理", TypeID = "7", id = "7", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0", iconCls = "project_icon" });
                 nodes.Add(new ExtTreeNode() { TypeTitle = "系统设置", TypeEName = "系统设置", text = "系统设置", TypeID = "6", id = "6", IsRoot = false, leaf = false, draggable = false, PID = "0", parentNodeId = "0",iconCls="system_icon" });
                 string json = JsonHelper.SerializeObject(nodes);

                 context.Response.Write(json);
             }
             else
             {
                 List<ExtTreeNode> nodes = new List<ExtTreeNode>();
                 switch (node)
                 {
                     case"1":
                         nodes.Add(new ExtTreeNode { TypeTitle = "图书馆", TypeEName = "图书馆", text = "图书馆",TypeID="101",id="101",IsRoot=false,leaf=true,PID=node ,action="FileManager/FileIndex.aspx"});
                         nodes.Add(new ExtTreeNode { TypeTitle = "资料库", TypeEName = "资料库", text = "资料库", TypeID = "102", id = "102", IsRoot = false, leaf = true, PID = node, action = "FileManager/FileIndex.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "共享文档", TypeEName = "共享文档", text = "共享文档", TypeID = "103", id = "103", IsRoot = false, leaf = true, PID = node, action = "FileManager/FileIndex.aspx" });
                         break;
                     case "2":
                         nodes.Add(new ExtTreeNode { TypeTitle = "工作报告", TypeEName = "工作报告", text = "工作报告", TypeID = "201", id = "201", IsRoot = false, leaf = true, PID = node, action = "workReport/worklist.aspx", icon = "Images/icons/calendar.png" });
                         break;
                     case "3":
                         nodes.Add(new ExtTreeNode { TypeTitle = "日程安排", TypeEName = "日程安排", text = "日程安排", TypeID = "301", id = "301", IsRoot = false, leaf = true, PID = node, action = "Calendar/Calendar.aspx",icon="Images/icons/calendar.png"});
                         break;
                     case "4":
                         nodes.Add(new ExtTreeNode { TypeTitle = "项目进度", TypeEName = "项目进度", text = "项目进度", TypeID = "401", id = "401", IsRoot = false, leaf = true, PID = node,action = "ProjectManager/projectlist.aspx" });
                         //nodes.Add(new ExtTreeNode { TypeTitle = "创建新项目", TypeEName = "创建新项目", text = "创建新项目", TypeID = "402", id = "402", IsRoot = false, leaf = true, PID = node });
                         break;
                     case "5":
                         nodes.Add(new ExtTreeNode { TypeTitle = "内部论坛", TypeEName = "内部论坛", text = "内部论坛", TypeID = "502", id = "502", IsRoot = false, leaf = true, PID = node, action = "Bbs/BbsIndex.aspx" });
                         break;
                     case "6":
                         
                         nodes.Add(new ExtTreeNode { TypeTitle = "部门设置", TypeEName = "部门设置", text = "部门设置", TypeID = "601", id = "601", IsRoot = false, leaf = true, PID = node,  action="SystemManager/DepartManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "职位设置", TypeEName = "职位设置", text = "职位设置", TypeID = "602", id = "602", IsRoot = false, leaf = true, PID = node, action = "SystemManager/DutyManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "用户管理", TypeEName = "用户管理", text = "用户管理", TypeID = "603", id = "603", IsRoot = false, leaf = true, PID = node, action = "SystemManager/UserManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "公告/通知管理", TypeEName = "公告/通知管理", text = "公告/通知管理", TypeID = "604", id = "604", IsRoot = false, leaf = true, PID = node, action = "SystemManager/NoticeManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "文档分类管理", TypeEName = "文档分类管理", text = "文档分类管理", TypeID = "605", id = "605", IsRoot = false, leaf = true, PID = node, action = "SystemManager/DocClassManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "报告/总结分类管理", TypeEName = "报告/总结分类管理", text = "报告/总结分类管理", TypeID = "606", id = "606", IsRoot = false, leaf = true, PID = node, action = "SystemManager/WorkReportManager.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "修改密码", TypeEName = "修改密码", text = "修改密码", TypeID = "607", id = "607", IsRoot = false, leaf = true, PID = node, action = "SystemManager/ChangePwd.aspx" });
                         break;
                     case "7":
                         nodes.Add(new ExtTreeNode { TypeTitle = "最新消息", TypeEName = "最新消息", text = "最新消息", TypeID = "704", id = "704", IsRoot = false, leaf = true, PID = node, action = "MsgManager/NewMsg.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "写消息", TypeEName = "写消息", text = "写消息", TypeID = "701", id = "701", IsRoot = false, leaf = true, PID = node, action = "MsgManager/SendMsg.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "发件箱", TypeEName = "发件箱", text = "发件箱", TypeID = "702", id = "702", IsRoot = false, leaf = true, PID = node, action = "MsgManager/SendBox.aspx" });
                         nodes.Add(new ExtTreeNode { TypeTitle = "收件箱", TypeEName = "收件箱", text = "收件箱", TypeID = "703", id = "703", IsRoot = false, leaf = true, PID = node, action = "MsgManager/ReceiveBox.aspx" });
                         break;
                     default: break;
                 }
                // if(param
                 string json = JsonHelper.SerializeObject(nodes);

                 context.Response.Write(json);
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