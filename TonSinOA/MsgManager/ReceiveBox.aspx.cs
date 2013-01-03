using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.MsgManager
{
    public partial class ReceiveBox : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/MsgManager/ReceiveBox.xml"));

            this.dgReceiveView.DataSource = ds;
            this.dgReceiveView.DataBind();
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {

        }
    }
}