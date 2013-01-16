using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TonSinOA.Model;


namespace TonSinOA
{
    public class BasePage:System.Web.UI.Page
    {
        /// <summary>
        /// 用户信息
        /// </summary>
        private LoginInfo m_Login;
        /// <summary>
        /// 登录用户Session信息
        /// </summary>
        public LoginInfo LoginSession
        {
            get { return m_Login; }
            private set { m_Login = value; }
        }
        protected override void OnInit(EventArgs e)
        {

            this.PreLoad += new EventHandler(BasePage_Load);
            base.OnInit(e);
        }

        protected void BasePage_Load(object sender, EventArgs e)
        {
            Authorization objAuthor = new Authorization();
            m_Login = objAuthor.GetLoginSession();
            if (m_Login == null)
            {
                //
                TsOAPage.ReturnNoPessionPage(this);
            }
           

            
        }

    }
}