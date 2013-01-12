using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TonSinOA
{
    public class BasePage:System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {

            this.PreLoad += new EventHandler(BasePage_Load);
            base.OnInit(e);
        }

        protected void BasePage_Load(object sender, EventArgs e)
        {
          

            
        }

    }
}