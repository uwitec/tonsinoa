<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BbsAdminTopControl.ascx.cs" Inherits="TonSinOA.UserControl.BbsAdminTopControl" %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height:40px">
            <tr>
                <td style="white-space: nowrap" align="center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Bbs/Group/ListGroup.aspx">分类管理</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Bbs/SubArea/ListSubArea.aspx">分区管理</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Bbs/Forum/ForumList.aspx">发表言论管理</asp:HyperLink>
                    &nbsp; &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Bbs/Reply/ReplyList.aspx">回复言论管理</asp:HyperLink>
                    &nbsp;
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Bbs/BbsIndex.aspx">返回首页</asp:HyperLink>
                </td>
            </tr>
            </table>