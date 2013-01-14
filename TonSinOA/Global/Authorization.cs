using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TonSinOA.Model;

namespace TonSinOA
{
    public class Authorization
    {
        private const string SessionKeyTag = "IBCOMUSER";
        private const string SessionPrevTag = "PREVTAG";
        private LoginInfo m_user;
        public Authorization()
        {
            m_user = GetLoginSession();
        }
        public LoginInfo GetLoginSession()
        {
            System.Web.SessionState.HttpSessionState Session = System.Web.HttpContext.Current.Session;
            //UserEntity u = null;
            if (Session != null)
            {
                Object o = Session[SessionKeyTag];
                if (o != null)
                {
                    return (LoginInfo)o;
                }
            }
            return null;
        }
    }
}