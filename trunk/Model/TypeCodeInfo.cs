using System; 
using System.Text;
using System.Collections.Generic; 
using System.Data;
namespace TonSinOA.Model{
	 	//OA_TB_SM_TypeCode
	public class TypeCodeInfo
	{
   		     
       /// <summary>
        /// TypeID
        /// </summary>
		public int TypeID { get; set; }
		/// <summary>
        /// TypeName
        /// </summary>
		public string TypeName { get; set; }
		/// <summary>
        /// 1.通知公告 2.报告总结 3.文档分类
        /// </summary>
		public int ParentID { get; set; }
		/// <summary>
        /// Remark
        /// </summary>
		public string Remark { get; set; }
		/// <summary>
        /// State
        /// </summary>
		public int State { get; set; }
		/// <summary>
        /// Created
        /// </summary>
		public DateTime Created { get; set; }
		/// <summary>
        /// Creator
        /// </summary>
		public int Creator { get; set; }
		   
	}
}

