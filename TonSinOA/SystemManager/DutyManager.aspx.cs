using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TonSinOA.Model;
namespace TonSinOA.SystemManager
{
    public partial class DutyManager : System.Web.UI.Page
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
            IList<DutyInfo> list = new List<DutyInfo>();

            int i = 0;
                list.Add(new DutyInfo { RowId = i++, DepID = i++, DutyName = "外教", DepName="教学部"});
                list.Add(new DutyInfo { RowId = i++, DepID = i++, DutyName = "分校长", DepName = "校领导" });
                list.Add(new DutyInfo { RowId = i++, DepID = i++, DutyName = "技术总监", DepName = "校领导" });
            dgDutyView.DataSource = list;
            dgDutyView.DataBind();
        }
    }
}