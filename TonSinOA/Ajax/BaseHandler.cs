using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace TonSinOA.Ajax
{
    public abstract class BaseHandler : IHttpHandler, IRequiresSessionState
    {
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public abstract void ProcessRequest(HttpContext context);
        
    }
}