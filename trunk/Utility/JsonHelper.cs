////==========================================================================
////类名:Common\JsonHelper.cs
////
////功能描述：json字符串工具类
////历史记录：
//// NO        日期          版本       姓名            内容
////--------------------------------------------------------------------------
//// 1         2011-12-22    V1.0      骆进           
//// 
////==========================================================================
using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;


namespace TonSinOA.Utility
{
    public static class JsonHelper
    {
        ///// <summary>
        ///// 序列化对象成json
        ///// </summary>
        ///// <param name="obj"></param>
        ///// <returns></returns>
        public static string SeriObject(object obj)
        {

            return  Newtonsoft.Json.JsonConvert.SerializeObject(obj, Newtonsoft.Json.Formatting.Indented, new Newtonsoft.Json.JsonSerializerSettings() { NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore });
        }
        /// <summary>
        /// 序列化对象成json
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string SerializeObject(object obj)
        {
          
            StringBuilder sb = new StringBuilder();
            Jayrock.Json.Conversion.JsonConvert.Export(obj, sb);
            return sb.ToString();
            // return JsonConvert.SerializeObject(obj, Formatting.Indented, new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore });
        }
        /// <summary>
        ///  反序列化json成对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="json"></param>
        /// <returns></returns>
        public static T DeserializeObject<T>(string json)
        {
            return Jayrock.Json.Conversion.JsonConvert.Import<T>(json);
        }
        /// <summary>
        /// 序列化json对像
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="json"></param>
        /// <returns></returns>
        public static T DescObject<T>(string json)
        {
            return Newtonsoft.Json.JsonConvert.DeserializeObject<T>(json);
        }
        /// <summary>   
        /// DataReader转换为Json   
        /// </summary>   
        /// <param name="dataReader">DataReader对象</param>   
        /// <returns>Json字符串< /returns>   
        public static string ToJson(SqlDataReader dataReader, int rows, int page)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("{page:");
            jsonString.Append(page);
            jsonString.Append(",total:");
            jsonString.Append(rows);
            jsonString.Append(",rows:[");
            int loop = 1;
            while (dataReader.Read())
            {
                jsonString.Append("{id:'").Append(loop++).Append("',cell:[");
                for (int i = 0; i < dataReader.FieldCount; i++)
                {
                    Type type = dataReader.GetFieldType(i);

                    string strValue = dataReader[i].ToString();

                    strValue = StringFormat(strValue, type);
                    if (i < dataReader.FieldCount - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("]},");
            }
            dataReader.Close();
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]}");
            return jsonString.ToString();
        }

        /// <summary>
        /// DataReader转换为Json  
        /// </summary>
        /// <param name="dataReader"></param>
        /// <param name="page"></param>
        /// <returns></returns>
        public static string ToJson(SqlDataReader dataReader, int page)
        {
            string totalRows = "";
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("{page:");
            jsonString.Append(page);
            jsonString.Append(",total:");
            jsonString.Append("{0}");
            jsonString.Append(",rows:[");
            int loop = 1;
            while (dataReader.Read())
            {
                totalRows = dataReader[dataReader.FieldCount - 1].ToString();

                jsonString.Append("{id:'").Append(loop++).Append("',cell:[");
                for (int i = 0; i < dataReader.FieldCount - 1; i++)
                {
                    Type type = dataReader.GetFieldType(i);
                    string strKey = dataReader.GetName(i).ToLower();
                    string strValue = dataReader[i].ToString();

                    strValue = StringFormat(strValue, type);

                    if (!strKey.Equals("totalrows"))
                    {
                        jsonString.Append(strValue + ",");
                    }

                }
                jsonString.Remove(jsonString.Length - 1, 1);
                jsonString.Append("]},");
            }
            dataReader.Close();
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]}");
            return jsonString.ToString().Replace("{0}", totalRows);
        }
        /// <summary>
        /// DataSet转换成json字符串
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="rows"></param>
        /// <param name="page"></param>
        /// <returns></returns>
        public static string ToJson(DataSet ds, int rows, int page)
        {
            DataTable dt = null;
            if (ds != null && ds.Tables.Count > 0)
                dt = ds.Tables[0];
            StringBuilder jsonString = new StringBuilder();
            jsonString.AppendLine("{");
            jsonString.AppendFormat("page: {0},\n", page);
            jsonString.AppendFormat("total: {0},\n", rows);
            jsonString.AppendLine("rows: [");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                jsonString.Append("{");

                jsonString.AppendFormat("id:'{0}',cell:[", i + 1);

                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strValue = dt.Rows[i][j].ToString();

                    if (j == dt.Columns.Count - 1)
                    {
                        jsonString.AppendFormat("'{0}'", strValue);
                    }
                    else
                    {
                        jsonString.AppendFormat("'{0}',", strValue);

                    }
                }
                jsonString.Append("]");

                if (i == dt.Rows.Count - 1)
                {

                    jsonString.AppendLine("}");
                }

                else
                {
                    jsonString.AppendLine("},");

                }
            }
            jsonString.Append("]");
            jsonString.AppendLine("}");
            return jsonString.ToString();
        }
        /// <summary>  
        /// <summary>
        /// dataTable转换成json字符串
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="rows"></param>
        /// <param name="page"></param>
        /// <returns></returns>
        public static string ToJson(DataTable dt, int rows, int page)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.AppendLine("{");
            jsonString.AppendFormat("page: {0},\n", page);
            jsonString.AppendFormat("total: {0},\n", rows);
            jsonString.AppendLine("rows: [");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                jsonString.Append("{");

                jsonString.AppendFormat("id:'{0}',cell:[", i + 1);

                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strValue = dt.Rows[i][j].ToString();

                    if (j == dt.Columns.Count - 1)
                    {
                        jsonString.AppendFormat("'{0}'", strValue);
                    }
                    else
                    {
                        jsonString.AppendFormat("'{0}',", strValue);

                    }
                }
                jsonString.Append("]");

                if (i == dt.Rows.Count - 1)
                {

                    jsonString.AppendLine("}");
                }

                else
                {
                    jsonString.AppendLine("},");

                }
            }
            jsonString.Append("]");
            jsonString.AppendLine("}");
            return jsonString.ToString();
        }
        /// <summary>  
        /// 格式化字符型、日期型、布尔型  
        /// </summary>  
        /// <param name="str"></param>  
        /// <param name="type"></param>  
        /// <returns></returns>  
        private static string StringFormat(string str, Type type)
        {
            if (type == typeof(string))
            {
                str = String2Json(str);
                str = "'" + str + "'";
            }
            else if (type == typeof(DateTime))
            {
                str = "'" + str + "'";
            }
            else if (type == typeof(Int16) || type == typeof(Int32) || type == typeof(Int64) || type == typeof(Byte))
            {
                str = "'" + str + "'";
            }
            else if (type == typeof(bool))
            {
                str = "'" + str.ToLower() + "'";
            }
            return str;
        }

        /// <summary>  
        /// 过滤特殊字符  
        /// </summary>  
        /// <param name="s"></param>  
        /// <returns></returns>  
        private static string String2Json(String s)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < s.Length; i++)
            {
                char c = s.ToCharArray()[i];
                switch (c)
                {
                    case '\"':
                        sb.Append("\\\""); break;
                    case '\\':
                        sb.Append("\\\\"); break;
                    case '/':
                        sb.Append("\\/"); break;
                    case '\b':
                        sb.Append("\\b"); break;
                    case '\f':
                        sb.Append("\\f"); break;
                    case '\n':
                        sb.Append("\\n"); break;
                    case '\r':
                        sb.Append("\\r"); break;
                    case '\t':
                        sb.Append("\\t"); break;
                    default:
                        sb.Append(c); break;
                }
            }
            return sb.ToString();
        }
    }
}
