using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.Bbs
{
    public partial class BbsIndex : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/bbs/group.xml"));
            ds.Tables[0].Columns.Add("AreaTable", typeof(DataTable));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                dr["AreaTable"] = GetDetail(dr["GroupID"].ToString());
            }
            this.dgGroupView.DataSource = ds;
            this.dgGroupView.DataBind();
        }

        public DataTable GetDetail(string projectID)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/bbs/area.xml"));
            DataRow[] drs = ds.Tables[0].Select("GroupID='" + projectID + "'");
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