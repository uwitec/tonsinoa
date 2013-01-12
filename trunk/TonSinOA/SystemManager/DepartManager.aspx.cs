using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TonSinOA.Model;

namespace TonSinOA.SystemManager
{
    public partial class DepartManger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }

        private void Bind()
        {
            IList<DepartmentInfo> list = new List<DepartmentInfo>();

            for (int i = 0; i < 5; i++)
            {
                list.Add(new DepartmentInfo { RowId = i, DepID = i, DepName = "部门" + i });
            }
            dgDeptView.DataSource = list;
            dgDeptView.DataBind();
        }

       
    }
}