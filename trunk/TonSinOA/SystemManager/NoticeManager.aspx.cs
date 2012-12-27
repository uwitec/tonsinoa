using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TonSinOA.SystemManager
{
    public partial class NoticeManager : System.Web.UI.Page
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
            ds.ReadXml(Server.MapPath("~/SystemManager/notice.xml"));

            this.dgNoticeView.DataSource = ds;
            this.dgNoticeView.DataBind();
        }
    }
}