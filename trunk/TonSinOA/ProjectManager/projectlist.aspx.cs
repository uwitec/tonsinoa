using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.ProjectManager
{
    public partial class projectlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bind();
            }
        }
        public void Bind()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/ProjectManager/project.xml"));
            ds.Tables[0].Columns.Add("dtDetail", typeof(DataTable));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                dr["dtDetail"] = GetDetail(dr["ProjectID"].ToString());
            }
            this.dgProjectView.DataSource = ds;
            this.dgProjectView.DataBind();
        }

        public DataTable GetDetail(string projectID)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/ProjectManager/task.xml"));
            DataRow[] drs = ds.Tables[0].Select("ProjectID='"+projectID+"'");
            DataTable dt = new DataTable();
            dt = ds.Tables[0].Clone();
            foreach (DataRow dr in drs)
            {
                dt.Rows.Add(dr.ItemArray);
            }
            dt.AcceptChanges();
            return dt;

        }
    }
}