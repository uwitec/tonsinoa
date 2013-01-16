using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using TonSinOA.Model;

namespace TonSinOA
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //测试
                LoginInfo loginInfo = new LoginInfo();
                loginInfo.UserID = 1;
                loginInfo.UserName = "系统管理员";
                loginInfo.UserAccount = "system";
                loginInfo.IsAdmin = true;
                loginInfo.FunsList = null;

                Session["logininfo"] = loginInfo;
            }
        }
    }
}