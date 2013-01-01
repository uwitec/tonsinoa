////==========================================================================
////类名:Common\StringHelper.cs
////
////功能描述：字符串工具类
////历史记录：
//// NO        日期          版本       姓名            内容
////--------------------------------------------------------------------------
//// 1         2012-12-22    V1.0      jimlly           
//// 
////==========================================================================
using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Text.RegularExpressions;
using System.IO;
using System.Security;
using System.Security.Cryptography;

namespace TonSinOA.Utility
{

    public class StringHelper
    {
        /// <summary>
        /// 过滤Html字符串
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ConvertHtmlContent(string str)
        {
            if (!string.IsNullOrEmpty(str))
            {
                str = str.Replace("<", "&lt;");
                str = str.Replace(">", "&gt;");
            }

            return str;
        }

        /// <summary>
        /// 过滤SQL注入字符串
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ConvertSQLContent(string str)
        {
            if (!string.IsNullOrEmpty(str))
            {
                str = str.Replace(";", "；");
                str = str.Replace("'", "’");
                str = str.Replace("\"", "”");
                str = ConvertHtmlContent(str);
            }

            return str;
        }

        /// <summary>
        /// 获取安全的请求参数（过滤Html，SQL等注入）
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string GetSafeRequestParam(string str)
        {
            if (!string.IsNullOrEmpty(str))
            {
                str = ConvertSQLContent(str);
                str = ConvertHtmlContent(str);
            }

            return str;
        }

        /// <summary>
        /// 取得Post数据
        /// </summary>
        /// <param name="paramName"></param>
        /// <returns></returns>
        public static string GetPost(string paramName)
        {
            string paramValue = "";

            if (HttpContext.Current.Request.Form[paramName] != null)
            {
                paramValue = HttpContext.Current.Request.Form[paramName].ToString();
            }

            return paramValue;
        }

        /// <summary>
        /// 取得Get数据
        /// </summary>
        /// <param name="paramName"></param>
        /// <returns></returns>
        public static string GetQuery(string paramName)
        {
            string paramValue = "";

            if (HttpContext.Current.Request.QueryString[paramName] != null)
            {
                paramValue = HttpContext.Current.Request.QueryString[paramName].ToString();
            }

            return paramValue;
        }

        /// <summary>
        /// 取得Get/Post数据
        /// </summary>
        /// <param name="paramName"></param>
        /// <returns></returns>
        public static string GetRequest(string paramName)
        {
            string paramValue = "";

            if (HttpContext.Current.Request.RequestType.ToLower() == "get")
            {
                paramValue = GetQuery(paramName);
            }
            else
            {
                paramValue = GetPost(paramName);
            }

            return paramValue;
        }


        public static string GetStreamToStr()
        {
            string sData = "";
            try
            {
                
                Encoding encoding = Encoding.GetEncoding("utf-8");
                Stream instream = HttpContext.Current.Request.InputStream;
                byte[] bytes = new byte[instream.Length];
                instream.Read(bytes, 0, bytes.Length);
                // 设置当前流的位置为流的开始
                instream.Seek(0, SeekOrigin.Begin);
                sData = encoding.GetString(bytes);                
            }
            catch
            {
                sData = "";
            }
            return sData;
        }

        /// <summary>
        /// MD5加密
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string GetMd5String(string str)
        {
            // First we need to convert the string into bytes, which
            // means using a text encoder.
            byte[] unicodeText = System.Text.Encoding.UTF8.GetBytes(str);

            // Now that we have a byte array we can ask the CSP to hash it
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] result = md5.ComputeHash(unicodeText);

            // Build the final string by converting each byte
            // into hex and appending it to a StringBuilder
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                sb.Append(result[i].ToString("x2"));
            }

            // And return it
            return sb.ToString();
        }


        /// <summary>
        /// 获取新的Guid
        /// </summary>
        /// <returns></returns>
        public static string GetGuidString()
        {
            return Guid.NewGuid().ToString().Replace("-", "").Replace("{", "").Replace("}", "").ToLower();
        }


        /// <summary>
        /// 获取时间戳
        /// </summary>
        /// <returns></returns>

        public static long GetTimeStemp()
        {
            TimeSpan ts = DateTime.Now - Convert.ToDateTime("1970-01-01");
            return (long)ts.TotalSeconds;
        }
        public static long GetTimeStemp(DateTime d)
        {
            TimeSpan ts = d - Convert.ToDateTime("1970-01-01");
            return (long)ts.TotalSeconds;
        }
    }

}//
