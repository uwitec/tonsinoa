using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.SystemManager
{
    public partial class DocClassManager : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/SystemManager/document.xml"));
            
            DataTable dt = ds.Tables[0].Clone();
            dt.Columns.Add("SubTable", typeof(DataTable));
            DataRow[] drs = ds.Tables[0].Select(" ParentID ='0'");
            foreach (DataRow dr in drs)
            {
                dt.Rows.Add(dr.ItemArray);
                //dr["SubTable"] = GetDetail(dr["GroupID"].ToString());
            }
            foreach (DataRow dr in dt.Rows)
            {
                dr["SubTable"] = GetDetail(dr["TypeID"].ToString());
            }
            this.dgDocView.DataSource = dt;
            this.dgDocView.DataBind();
        }

        public DataTable GetDetail(string parentID)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/SystemManager/document.xml"));
            DataRow[] drs = ds.Tables[0].Select("ParentID='" + parentID + "'");
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