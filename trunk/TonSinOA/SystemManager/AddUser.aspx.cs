using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TonSinOA.DAL;
using TonSinOA.Model;
using TonSinOA.Utility;
namespace TonSinOA.SystemManager
{
    public partial class AddUser : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDuty();
                BindRoleList();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            UserInfo userInfo = new UserInfo();
            userInfo.UserName = txtUserName.Text;
            userInfo.UserAccount = txtUserAccount.Text;
            userInfo.Pwd = StringHelper.GetMd5String(txtPassword.Text);
            userInfo.Remark = txtRemark.Text;
            userInfo.State = radEnabled.Checked ? 1 : 0;
            userInfo.Creator = LoginSession.UserID;
            userInfo.Email = txtEmail.Text;
            userInfo.DepID = Convert.ToInt32(drpDep.SelectedValue);
            userInfo.DutyID = Convert.ToInt32(drpDuty.SelectedValue);

            UserDAL userDal = new UserDAL();

            
            int UserID = 0;
            bool result = userDal.AddUser(userInfo, out  UserID);
            if (result)
            {
                //保存角色用户关系 todo
                //保存用户权限关系 todo
                //保存用户组关系todo
            }
        }

        /// <summary>
        /// 绑定职务列表
        /// </summary>
        public void BindDuty()
        {
            //todo
        }
        /// <summary>
        /// 绑定角色列表
        /// </summary>
        public void BindRoleList()
        {
            //todo
        }
    }
}