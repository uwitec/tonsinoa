using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.Bbs
{
    public partial class MyForumList : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/bbs/myforum.xml"));
            ds.Tables[0].Columns.Add("AreaTable", typeof(DataTable));

            this.dgMyForumView.DataSource = ds;
            this.dgMyForumView.DataBind();
        }
    }
}