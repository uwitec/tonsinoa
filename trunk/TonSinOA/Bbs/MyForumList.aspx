<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyForumList.aspx.cs" Inherits="TonSinOA.Bbs.MyForumList" %>
<%@ Register src="../UserControl/BbsTopControl.ascx" tagname="BbsTopControl" tagprefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>我的帖子</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/Attach.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
 <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="white-space: nowrap" align="center" valign="middle">
                   
                    <uc1:BbsTopControl ID="BbsTopControl1" runat="server" />
                   
                </td>
            </tr>

            <tr valign="top">
                <td valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr valign="top">
            <td style="white-space: nowrap" valign="top" align="left">
                &nbsp; &nbsp;<img src="../Images/bbs/Forum_nav.gif">
                <a href="BbsIndex.aspx">
                    <asp:Label ID="lblBbsName" runat="server" Text="论坛首页"></asp:Label></a> →

                <a href="MyForumList.aspx">我发表的帖子</a> → 帖子列表
            </td>
        </tr>
        <tr>
            <td style="white-space: nowrap" valign="middle" align="left">               
               <%-- <a href="PostNewSelect.aspx">
                    <img src="../Images/bbs/postnew0.gif" alt="发新帖"></a>--%>
                
                   <a id="status" href="javascript:" class="big2 dropdown "  onmouseover="showMenu(this.id,'1');" ><span>发 &nbsp; &nbsp;&nbsp; 布</span></a>&nbsp;
                   <br /><div id="status_menu" class="attach_div">
                     
                      <a href="PostNewSelect.aspx" style="color:#0000FF;">发布新帖</a>
                      <a href="AVote.aspx" style="color:#0000FF;">发起投票</a>
                      
                   </div>
                 
                
                <%--	<a  class="tie-write" href="/bbs/post.jsp?boardid=society" onmouseover="showMenu(this.id,'1')" ><span>发 &nbsp; &nbsp;&nbsp; 布</span></a>
                   
             

            <div id="status_menu" class="attach_div">
                     
                      <a href="PostNewSelect.aspx" style="color:#0000FF;">发布新帖</a>
                      <a href="AVote.aspx" style="color:#0000FF;">发起投票</a>
                      
                   </div>--%>
                   
            </td>
        </tr>
        <tr>
            <td align="center">
                <table border="0" cellpadding="3" cellspacing="1"  class="tableground">
                    <tr style="background-color:#f0f0ee">
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            主题
                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            作者

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            回复
                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            最后更新/回复人

                        </td>
                 <%--       <td style="height: 22px; white-space: nowrap;" align="center">
                            附件
                        </td>--%>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            所在分区

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            所在分类

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            查看回复
                        </td>
                    </tr>
                    <asp:Repeater ID="dgMyForumView" runat="server" >
                        <ItemTemplate>
                            <tr style="background-color: White" valign="top">
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                   <%-- <asp:HiddenField ID="HiddenStatus" runat="server" />
                                    <asp:Image ID="ImgStatus" runat="server" ImageUrl="~/Images/bbs/vote.png" />--%>
                                    <img src="<%# TonSinOA.Global.GetForumType(  Convert.ToInt32( Eval("AreaID"))) %>" />
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <a href="ReplyView.aspx?Action=<%# Eval("CommitID") %>&Infomation=<%#  Eval("AreaID") %>">
                                        <%#  Eval("Subject") %>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <%# Eval("CreatUser") %>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <asp:Label ID="lblReplyNum" runat="server" Text='<%# Eval("ReplyNum") %>'>
                                    </asp:Label>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <asp:Label ID="lblLastReplyDate" runat="server" Text='<%#  Eval("ReplyLastUpdateTime") %>'>
                                    </asp:Label>
                                    <asp:Label ID="lblAgument2" runat="server" Text=" | "></asp:Label>
                                    <asp:Label ID="lblLastReplyUser" runat="server" Text='<%#  Eval("ReplyLastUpdateUser") %>'>
                                    </asp:Label>
                                </td>
                             <%--   <td style="height: 25px; white-space: nowrap;" align="center">
                                    <asp:HyperLink NavigateUrl='<%# Eval("Commit_ID","DownLoad.aspx?Action={0}&Infomation=1")  %>'
                                        Target="_top" ID="LinkAttach" runat="server" Visible="False">[查看附件]</asp:HyperLink>
                                    <asp:HiddenField ID="HiddenAttachFlag" runat="server" Value='<%# Eval("Commit_AttachFlag")  %>' />
                                </td>--%>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <a href="BListItem.aspx?Action=<%# Eval("AreaID") %>" target="_blank">
                                        <%#  Eval("AreaName") %>
                                    </a>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <a href='ListBoard.aspx?Action=<%#  Eval("GroupID") %>' target="_blank">
                                        <%#  Eval("GroupName") %>
                                    </a>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <a href='ReplyView.aspx?Action=<%#  Eval("CommitID") %>&Infomation=<%#  Eval("AreaID") %>'
                                        target="_blank">查看回复</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr align="right" style="background-color: #f2f8ff" valign="top">
                        <td style="white-space: nowrap" colspan="8">
                     <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonCount="20" 
                                                                PageSize="20" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                                                ShowPageIndex="False" AlwaysShow="True" ShowInputBox="Auto">
                                                            </webdiyer:AspNetPager>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
                </td>
            </tr>
            <tr valign="bottom">
                <td align="center" valign="bottom">
                   
                </td>
            </tr>
        </table></div>
    </form>
</body>
</html>
