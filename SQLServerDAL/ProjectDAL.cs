using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TonSinOA.Model;
using System.Data;

namespace TonSinOA.DAL
{

    /// <summary>
    ///  项目管理
    /// </summary>
   public class ProjectDAL
    {
       /// <summary>
       /// 
       /// </summary>
       /// <param name="StartTime"></param>
       /// <param name="EndTime"></param>
       /// <param name="State"></param>
       /// <param name="Responser"></param>
       /// <returns></returns>
       public DataTable QueryProjectList(string StartTime, string EndTime, int State, int Responser)
       {
           return null;
       }
       /// <summary>
       /// 添加项目
       /// </summary>
       /// <param name="ProjectName">项目名称</param>
       /// <param name="Responser">责任人</param>
       /// <returns></returns>
       public bool AddProject(string ProjectName, int Responser)
       {
           return false;
       }
       /// <summary>
       /// 编辑项目
       /// </summary>
       /// <param name="ProjectName"></param>
       /// <param name="Responser"></param>
       /// <returns></returns>
       public bool EditProject(int ProjectID,string ProjectName, int Responser)
       {
           return false;
       }
       /// <summary>
       /// 删除项目
       /// </summary>
       /// <param name="ProjectID"></param>
       /// <returns></returns>
       public bool DeleteProject(int ProjectID)
       {
           return false;
       }
       /// <summary>
       /// 添加任务
       /// </summary>
       /// <param name="Task"></param>
       /// <returns></returns>
       public bool AddTask(TaskInfo Task)
       {
           return false;
       }
       /// <summary>
       /// 编辑任务
       /// </summary>
       /// <param name="Task"></param>
       /// <returns></returns>
       public bool EditTask(TaskInfo Task)
       {
           return false;
       }
       /// <summary>
       /// 删除任务
       /// </summary>
       /// <param name="TaskID"></param>
       /// <returns></returns>
       public bool DeleteTask(int TaskID)
       {
           return false;
       }
    }
}
