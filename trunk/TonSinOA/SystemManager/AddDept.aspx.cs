using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Threading;
using System.Web.UI.WebControls;
using TonSinOA.DAL;
using Resources;
using TonSinOA.Model;
namespace TonSinOA.SystemManager
{
    public partial class AddDept :BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DepartmentDAL departDal = new DepartmentDAL();
            DepartmentInfo departInfo = new DepartmentInfo();
            departInfo.DepName = txtDepName.Text;
            departInfo.Remark = txtRemark.Value;

            if (hidparentID.Value == "")
            {
                departInfo.ParentID = 0;
            }
            else
            {
                departInfo.ParentID = Convert.ToInt32(hidparentID.Value);
            }
            bool result = departDal.Exists(0, departInfo.DepName);
            if (result)
            {
                int depID = departDal.Add(departInfo);
                if (depID > 0)
                {
                    TsOAPage.ShowMsgRefresh(this.Page, lang.SaveSuccess);
                    return;
                }
                else
                {
                    TsOAPage.ShowMsgRefresh(this.Page, lang.SaveFail);
                    return;
                }
            }
            else
            {
                TsOAPage.ShowMsgRefresh(this.Page, string.Format(lang.NameExists,lang.DepName));
                return;
            }
        }
    }
}