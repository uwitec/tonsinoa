using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using TonSinOA.Utility;

namespace TonSinOA.Ajax
{
    /// <summary>
    /// FileTree 的摘要说明
    /// </summary>
    public class FileTree : BaseHandler
    {


        public override void ProcessRequest(HttpContext context)
        {

            string id = "0";
            string pid = "0";
            string extparam = "";
            id = StringHelper.GetRequest("id") == "" ? "0" : StringHelper.GetRequest("id");
            pid = StringHelper.GetRequest("pid") == "" ? "0" : StringHelper.GetRequest("pid");
            extparam = StringHelper.GetRequest("extparam") == "" ? "0" : StringHelper.GetRequest("extparam");
            DataSet ds = new DataSet();
            ds.ReadXml(context.Server.MapPath( "~/SystemManager/Document.xml"));
            StringBuilder str = new StringBuilder();
            DataRow[] drs = null;
            if (pid == "0" && id == "0")
            {
                drs = ds.Tables[0].Select("ParentID='0'");
            }
            else
            {
                drs = ds.Tables[0].Select("ParentID='"+id+"'");
            }
            List<TreeNode> list = new List<TreeNode>();
            for (int i = 0; i < drs.Length; i++)
            {
                DataRow dr = drs[i];
                TreeNode node = new TreeNode();
                node.id = dr["TypeID"].ToString();
                node.pid = dr["ParentID"].ToString();
                node.name = dr["TypeName"].ToString();
                node.isParent = "true";
                if (extparam != "N")
                {
                    node.target = "rightFrame";
                    node.url = "FileList.aspx?TypeID=" + node.id + "&SuperID=" + node.pid + "&name=" + node.name;
                }
                list.Add(node);
            }
            string json = JsonHelper.SerializeObject(list);
            context.Response.Write(json);
        }


        public class TreeNode
        {
            public string id { get; set; }
            public string pid { get; set; }
            public string name { get; set; }
            public string url { get; set; }
            public string target { get; set; }
            public string isParent { get; set; }
            public string click { get; set; }
        }
    }
}