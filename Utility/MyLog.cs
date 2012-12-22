using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Utility
{
    public class MyLog
    {
        public MyLog()
        {
        }
        static public readonly log4net.ILog logger = log4net.LogManager.GetLogger("MyLog");
    }
}
