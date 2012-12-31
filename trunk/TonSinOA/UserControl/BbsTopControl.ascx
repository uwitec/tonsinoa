<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BbsTopControl.ascx.cs" Inherits="TonSinOA.UserControl.BbsTopControl" %>
     <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="white-space: nowrap" align="center" valign="middle">
                    <asp:HyperLink ID="HyperLink1" Target="_self" NavigateUrl="~/Bbs/BbsIndex.aspx" runat="server" ToolTip="进入论坛首页">论坛首页</asp:HyperLink>&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" Target="_self" NavigateUrl="~/Bbs/MyForumList.aspx" runat="server" ToolTip="查看自己发表的帖子">帖子列表</asp:HyperLink>&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLinkMng" Target="_self" NavigateUrl="~/Bbs/Group/ListGroup.aspx" runat="server" ToolTip="对BBS进行管理">论坛管理</asp:HyperLink>
                </td>
            </tr>
            </table>
