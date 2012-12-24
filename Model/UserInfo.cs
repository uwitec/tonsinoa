using System; 
using System.Text;
using System.Collections.Generic; 
using System.Data;
namespace TonSinOA.Model{
	 	//OA_TB_SM_User
    /// <summary>
    /// 用户实体
    /// </summary>
	public class UserInfo
	{
   		     
       /// <summary>
        /// UserID
        /// </summary>
		public int UserID { get; set; }
		/// <summary>
        /// UserAccount
        /// </summary>
		public string UserAccount { get; set; }
		/// <summary>
        /// Pwd
        /// </summary>
		public string Pwd { get; set; }
		/// <summary>
        /// UserName
        /// </summary>
		public string UserName { get; set; }
		/// <summary>
        /// DepID
        /// </summary>
		public int DepID { get; set; }
		/// <summary>
        /// DutyID
        /// </summary>
		public int DutyID { get; set; }
		/// <summary>
        /// Remark
        /// </summary>
		public string Remark { get; set; }
		/// <summary>
        /// Email
        /// </summary>
		public string Email { get; set; }
		/// <summary>
        /// 0.禁用 1.启用
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

