using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using System.Configuration;
using System.Data.SqlClient;

namespace TonSinOA
{
    public partial class fullCalandarTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //   DAL.UserDAL user = new DAL.UserDAL();

            //Response.Write(TonSinOA.Utility.CryptoHelper.Encrypt(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr1 = TonSinOA.Utility.CryptoHelper.Decrypt(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
               
                SqlConnection myConnection1 = new SqlConnection(connStr1);
                myConnection1.Open();
                Response.Write("服务1启动成功！");
                myConnection1.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
}