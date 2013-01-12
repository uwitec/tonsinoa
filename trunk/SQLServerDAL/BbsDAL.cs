using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TonSinOA.Model;

namespace TonSinOA.DAL
{
    /// <summary>
    /// 内部论坛
    /// </summary>
   public class BbsDAL
    {
       /// <summary>
       /// 获取所有分组信息 
       /// </summary>
       /// <returns></returns>
       public IList<BbsGroupInfo> GetAllGroupInfo()
       {
           return null;
       }
       /// <summary>
       /// 获取单个组信息
       /// </summary>
       /// <param name="GroupID">组ID</param>
       /// <returns></returns>
       public BbsGroupInfo GetGroupInfo(int GroupID)
       {
           return null;
       }
       /// <summary>
       /// 添加分组
       /// </summary>
       /// <param name="GroupInfo"></param>
       /// <returns></returns>
       public bool AddGroup(BbsGroupInfo GroupInfo)
       {
           return true;
       }
       /// <summary>
       /// 修改分组信息
       /// </summary>
       /// <param name="GroupID">组ID</param>
       /// <param name="GroupInfo"></param>
       /// <returns></returns>
       public bool UpdateGroup(int GroupID, BbsGroupInfo GroupInfo)
       {
           return true;
       }
       /// <summary>
       /// 删除分组
       /// </summary>
       /// <param name="GroupID"></param>
       /// <returns></returns>
       public bool DeleteGroup(int GroupID)
       {
           return true;
       }
       /// <summary>
       /// 根据组获取版块列表
       /// </summary>
       /// <param name="GroupID"></param>
       /// <returns></returns>
       public IList<BbsSectionInfo> GetSectionList(int GroupID)
       {
           return null;
       }
       /// <summary>
       /// 根据版块ID获取版块信息
       /// </summary>
       /// <param name="ForumID"></param>
       /// <returns></returns>
       public BbsSectionInfo GetSectionInfo(int ForumID)
       {
           return null;
       }
       /// <summary>
       /// 添加版块
       /// </summary>
       /// <param name="SectionInfo"></param>
       /// <returns></returns>
       public bool AddSection(BbsSectionInfo SectionInfo)
       {
           return true;
       }

       /// <summary>
       /// 更新版块
       /// </summary>
       /// <param name="ForumID"></param>
       /// <returns></returns>
       public bool UpdateSection(int ForumID, BbsSectionInfo SectionInfo)
       {
           return true;
       }
       /// <summary>
       /// 删除版块
       /// </summary>
       public bool DeleteSection(int ForumID)
       {
           return true;
       }

       /// <summary>
       /// 分页获取某版块下的面所有 贴子列表
       /// </summary>
       /// <param name="ForumID">版块ID</param>
       /// <param name="PageSize"></param>
       /// <param name="PageIndex"></param>
       /// <param name="totalRows"></param>
       /// <returns></returns>
       public IList<PostInfo> GetSectionPostList(int ForumID,int PageSize, int PageIndex, out int totalRows)
       {
           totalRows = 0;
           return null;
       }
       /// <summary>
       /// 分页获取某用户下的面所有 贴子列表
       /// </summary>
       /// <param name="UserID"></param>
       /// <param name="PageSize"></param>
       /// <param name="PageIndex"></param>
       /// <param name="totalRows"></param>
       /// <returns></returns>
       public IList<PostInfo> GetUserPostList(int UserID, int PageSize, int PageIndex, out int totalRows)
       {
           totalRows = 0;
           return null;
       }
       /// <summary>
       /// 获取帖子信息
       /// </summary>
       /// <param name="PostID"></param>
       /// <returns></returns>
       public PostInfo GetPostInfo(int PostID)
       {
           return null;
       }
       /// <summary>
       /// 发帖
       /// </summary>
       /// <param name="postInfo"></param>
       /// <param name="PostID"></param>
       /// <returns></returns>
       public bool AddPost(PostInfo postInfo,out int PostID)
       {
           PostID = 0;
           return true;
       }
       /// <summary>
       /// 发起投票
       /// </summary>
       /// <param name="postInfo"></param>
       /// <param name="pollinfo"></param>
       /// <param name="PostID"></param>
       /// <returns></returns>
       public bool AddPoll(PostInfo postInfo,PollInfo pollinfo,out int PostID)
       {
            PostID = 0;
            return true;
       }
       /// <summary>
       /// 删除帖子（同时回复表中数据一并删除）如果是投票则应表投票对应的信息也删除
       /// </summary>
       /// <param name="PostID"></param>
       /// <returns></returns>
       public bool DeletePost(int PostID)
       {
           return false;
       }
       /// <summary>
       /// 分页获取单个帖子下所有的回复列表
       /// </summary>
       /// <param name="PostID"></param>
       /// <returns></returns>
       public IList<ReplyInfo> GetReplyList(int PostID, int PageSize, int PageIndex, out int totalRows)
       {
           totalRows = 0;
           return null;
       }
       /// <summary>
       /// 获取所有回复列表
       /// </summary>
       /// <param name="PageSize"></param>
       /// <param name="PageIndex"></param>
       /// <param name="totalRows"></param>
       /// <returns></returns>
       public IList<ReplyInfoEx> GetReplyList(int PageSize, int PageIndex, out int totalRows)
       {
           totalRows = 0;
           return null;
       }
       /// <summary>
       /// 根据回复编号获取单个回复信息
       /// </summary>
       /// <param name="ReplyID"></param>
       /// <returns></returns>
       public ReplyInfo GetReplyInfo(int ReplyID)
       {
           return null;
       }
       /// <summary>
       /// 添加回复
       /// </summary>
       /// <param name="?"></param>
       /// <param name="ReplyID"></param>
       /// <returns></returns>
       public bool AddReply(ReplyInfo replyInfo,out int ReplyID)
       {
           ReplyID=0;
           return false;
       }
       /// <summary>
       /// 删除回复
       /// </summary>
       /// <param name="ReplyID"></param>
       /// <returns></returns>
       public bool DeleteReply(int ReplyID)
       {
           return false;
       }
    }
}
