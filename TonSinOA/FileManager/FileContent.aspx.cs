using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.FileManager
{
    public partial class FileContent1 : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/FileManager/File.xml"));
            DataTable dt = ds.Tables[0].Clone();
            DataRow[] drs = ds.Tables[0].Select("DocID='7'");
            dt.Rows.Add(drs[0].ItemArray);
            dt.AcceptChanges();
            this.dgDocView.DataSource = dt;
            this.dgDocView.DataBind();
        }
    }
}