using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
  public  class TaskInfo
    {
      /// <summary>
        /// 任务编号
      /// </summary>
      public int TaskID { get; set; }
      /// <summary>
      /// 项目编号
      /// </summary>
      public int ProjectID { get; set; }
      /// <summary>
      /// 任务名称
      /// </summary>
      public string TaskName { get; set; }
      /// <summary>
      /// 开始时间
      /// </summary>
      public DateTime StartTime { get; set; }
      /// <summary>
      /// 结束时间
      /// </summary>
      public DateTime EndTime { get; set; }
      /// <summary>
      /// 检视点
      /// </summary>
      public string KeyPoints { get; set; }
      /// <summary>
      /// 方法
      /// </summary>
      public string Methods { get; set; }
      /// <summary>
      /// 关键控制点
      /// </summary>
      public string KeyControls { get; set; }
      /// <summary>
      /// 力度
      /// </summary>
      public string Strength { get; set; }
      /// <summary>
      /// 检视人
      /// </summary>
      public int Reviewer { get; set; }
      /// <summary>
      /// 责任人
      /// </summary>
      public int Responser { get; set; }
      /// <summary>
      /// 乐捐承诺
      /// </summary>
      public string Promise { get; set; }
      /// <summary>
      /// 当前进度
      /// </summary>
      public string Process { get; set; }
      /// <summary>
      /// 状态
      /// </summary>
      public int State { get; set; }
      /// <summary>
      /// 创建人
      /// </summary>
      public int UserID { get; set; }
    }
}
