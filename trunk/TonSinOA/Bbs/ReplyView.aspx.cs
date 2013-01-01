using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.Bbs
{
    public partial class ReplyView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNav();
                BindComit();
                BindReply();
            }
        }

        public void BindNav()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/bbs/reply.xml"));
            DataTable dt = ds.Tables[0].Clone();
            dt.Rows.Add(ds.Tables[0].Rows[0].ItemArray);
            this.dgNavaView.DataSource = dt;
            this.dgNavaView.DataBind();
        }
        public void BindComit()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/bbs/commit.xml"));
            this.dgCommView.DataSource = ds;
            this.dgCommView.DataBind();
        }
        public void BindReply()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/bbs/reply.xml"));
            this.dgReplyView.DataSource = ds;
            this.dgReplyView.DataBind();
        }
    }
}