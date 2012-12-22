////==========================================================================
////类名:Common\LogBuilder.cs
////
////功能描述：DBUtility--封装参数为string,用来将DAL层中函数调用存储过程的日志转为JSON格式
////历史记录：
//// NO        日期          版本       姓名            内容
////--------------------------------------------------------------------------      
//// 2         2012-12-22    V1.0     jimlly           ////==========================================================================
using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection;
using Jayrock.Json.Conversion;
using Jayrock.Json;

namespace TonSinOA.Utility
{
    /// <summary>
    /// 参数输入输出方向
    /// </summary>
    public enum ParamDirection { IN = 0, OUT = 1, INOUT = 2 };

    public class LogBuilder
    {
        public LogBuilder()
        {
        }
        public LogBuilder(string method,string path)
        {
            _Method = method;
            _Path = path;
        }
        private string _Desc ="";
        /// <summary>
        /// 描述
        /// </summary>
        [JsonDataMember(Name = "Desc")]
        public string Desc
        {
            get { return _Desc; }
            set { _Desc = value; }
        }
        private string _Database;
        /// <summary>
        /// 使用的数据库
        /// </summary>
        [JsonDataMember(Name = "Database")]
        public string Database
        {
            get { return _Database; }

            set { _Database = value; }
        }
        //代码路径
        private string _Path;
        /// <summary>
        /// 代码路径 命名空间+类名称
        /// </summary>
        [JsonDataMember(Name = "Path")]
        public string Path
        {
            get { return _Path; }

            set { _Path = value; }
        }
        //所在的方法
        private string _Method;
        /// <summary>
        /// 所在的方法
        /// </summary>
        [JsonDataMember(Name = "Method")]
        public string Method
        {
            get { return _Method; }

            set {
                
                _Method = value; }
        }
        //调用的存储过程
        private string _StroreProcedure;
        /// <summary>
        /// 调用的存储过程
        /// </summary>
        [JsonDataMember(Name = "StroreProcedure")]
        public string StroreProcedure
        {
            get { return _StroreProcedure; }

            set { _StroreProcedure = value; }
        }
        //异常消息
        private string _Exception;
        /// <summary>
        /// 异常消息
        /// </summary>
        [JsonDataMember(Name = "Exception")]
        public string Exception
        {
            get { return _Exception; }

            set { _Exception = value; }
        }

        private List<JsonObject> _Params = new List<JsonObject>();
        /// <summary>
        /// 其它参数列表值 
        /// </summary>
        [JsonDataMember(Name = "Params")]
        public List<JsonObject> Params
        {
            get { return _Params; }
            set { _Params = value; }
        }
        /// <summary>
        /// 添加一个参数
        /// </summary>
        /// <param name="name"></param>
        /// <param name="value"></param>
        /// <param name="iDirection"></param>
        public void Append(string name, object value, ParamDirection iDirection = ParamDirection.IN)
        {
            JsonObject obj = new JsonObject();
            obj[name] = value;
            obj["Direction"] = iDirection;

            _Params.Add(obj);

        }
        //
        /// <summary>
        /// 转换成JSON格式
        /// </summary>
        /// <returns></returns>
        public string ToJsonString()
        {

            return JsonHelper.SerializeObject(this); ;
        }
        /// <summary>
        /// 错误日志
        /// </summary>
        public void Error()
        {
            MyLog.logger.Error(ToJsonString());
        }
        /// <summary>
        /// 错误日志
        /// </summary>
        /// <param name="json">json字符串</param>
        public void Error(string json)
        {
            MyLog.logger.Error(json);
        }
        /// <summary>
        /// 调试日志
        /// </summary>
        public void Debug()
        {
            MyLog.logger.Debug(ToJsonString());
        }
        /// <summary>
        /// 调试日志
        /// </summary>
        /// <param name="json">json字符串</param>
        public void Debug(string json)
        {
           MyLog.logger.Debug(json);
        }
        /// <summary>
        /// 警告日志
        /// </summary>
        public void Warn()
        {
            MyLog.logger.Warn(ToJsonString());
        }
        /// <summary>
        /// 警告日志
        /// </summary>
        /// <param name="json">json字符串</param>
        public void Warn(string json)
        {
            MyLog.logger.Warn(json);
        }
        /// <summary>
        /// 信息日志
        /// </summary>
        public void Info()
        {
            MyLog.logger.Info(ToJsonString());
        }
        /// <summary>
        /// 信息日志
        /// </summary>
        /// <param name="json">json字符串</param>
        public void Info(string json)
        {
            MyLog.logger.Info(json);
        }
    }
  
    public class Parameter
    {
        //构造函数
        public Parameter(string name, object value, ParamDirection iDirection)
        {
            _Name = name;
            _Value = value;
            _Direction = iDirection;
        }
        //参数名字
        private string _Name = "";
        [JsonDataMember(Name = "Name")]
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        //参数值
        private object _Value = "";
        [JsonDataMember(Name = "Value")]
        public object Value
        {
            get { return _Value; }
            set { _Value = value; }
        }
        //参数方向,0 输入参数(IN) 1 输出参数(OUT) 2 输入输出参数(INOUT)
        private ParamDirection _Direction = 0;
        [JsonDataMember(Name = "Direction")]
        public ParamDirection Direction
        {
            get { return _Direction; }
            set { _Direction = value; }
        }
    }
}