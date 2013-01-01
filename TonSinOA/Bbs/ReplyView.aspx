<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReplyView.aspx.cs" Inherits="TonSinOA.Bbs.ReplyView" %>
<%@ Register src="../UserControl/BbsTopControl.ascx" tagname="BbsTopControl" tagprefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>回复列表</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
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
               <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr valign="top">
            <td>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <asp:Repeater ID="rptNavigation" runat="server">
                        <ItemTemplate>
                            <tr valign="top">
                                <td align="left" valign="top" style="white-space: nowrap" colspan="2">
                                    <img src="../Images/bbs/Forum_nav.gif">
                                    <a href="BbsIndex.aspx">论坛首页</a> →
                                   <%-- <a href='ListBoard.aspx?Action=<%# Eval("Group_ID") %>'>--%>
                                        <%# Eval("Group_Name") %>
                                  <%--  </a>→ <a href='BListItem.aspx?Action=<%# Eval("Area_ID") %>'>--%>
                                       → <%# Eval("Area_Name") %>
                                  <%--  </a>→--%>
                                    →<%# Eval("Commit_Subject") %>
                                </td>
                            </tr>
                            <tr>
                                <td valign="middle" align="left" style="white-space: nowrap">
                                     <a id="status" href="javascript:" class="big2 dropdown "  onmouseover="showMenu(this.id,'1');" ><span>发 &nbsp; &nbsp; 布</span></a>&nbsp;
                                     <a id="A1" href="javascript:" class="dropdown "  ><span>回 &nbsp; &nbsp; 复</span></a>
                   <br /><div id="status_menu" class="attach_div">
                     
                      <a href='PostNew.aspx?Action=<%# Eval("Area_ID") %>' style="color:#0000FF;">发布新帖</a>
                      <a href="AVote.aspx?Action=<%# Eval("Area_ID") %>" style="color:#0000FF;">发起投票</a>
                      
                   </div>
<%--                                     <span class="huifu"> <a href='PostNew.aspx?Action=<%# Eval("Area_ID") %>' title="回复该帖子" >发新贴</a></span>
                                     <span class="huifu"> <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>'title="回复该帖子" >回复</a></span>--%>
                                  <%--      <img src="../Images/bbs/postnew0.gif" border="0" alt="发新帖"></a> &nbsp; &nbsp; <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>'>
                                            <img src="../Images/bbs/reply0.gif" border="0" alt="回复该帖子"></a>--%>
                                </td>
                                <td valign="middle" align="right" style="white-space: nowrap">
                                    <asp:LinkButton ID="btnPrevPiece" runat="server" CommandArgument="Prev" BorderWidth="0"
                                        CommandName="Prev">
												<img src="../Images/bbs/prethread.gif" alt="上一篇帖子" border="0" /></asp:LinkButton>
                                    &nbsp; &nbsp;
                                    <asp:LinkButton ID="btnNextPiece" runat="server" CommandArgument="Next" BorderWidth="0"
                                        CommandName="Next">
												<img src="../Images/bbs/nextthread.gif" alt="下一篇帖子" border="0" /></asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td align="left" valign="middle" colspan="2">
                            <table cellspacing="1" cellpadding="3" class="tableground"   align="center">
                                <asp:Repeater ID="rptCommitItem" runat="server" OnItemDataBound="rptCommitItem_ItemDataBound">
                                    <ItemTemplate>
                                        <tr style="background-color: #99ccff">
                                            <td colspan="2" style="white-space: nowrap;background-color:#f0f0ee">
                                                <img src="../Images/bbs/nofollow.gif">帖子主题 :
                                                <%# Eval("Commit_Subject") %>
                                            </td>
                                        </tr>
                                        <tr valign="top" >
                                            <td style="width: 20%;height: 200px">
                                                作者 :
                                                <%# Eval("CnName") %>
                                            </td>
                                            <td>
                                                <%# Eval("Commit_Content") %>
                                            </td>
                                        </tr>
                                        <tr valign="top" >
                                            <td style="width: 20%">
                                                <img src="../Images/bbs/time.gif" />&nbsp; &nbsp;<%# Eval("Commit_DateTime") %></td>
                                            <td align="right">
                                                <asp:HyperLink NavigateUrl='<%# Eval("Commit_ID","DownLoad.aspx?Action={0}&Infomation=1")  %>'
                                                    Target="_top" ID="LinkAttach" runat="server" Visible="False">[查看附件]</asp:HyperLink>
                                                <asp:HiddenField ID="HiddenAttachFlag" Value='<%# Eval("Commit_AttachFlag") %>' runat="server" />
                                                  <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>&AType=1'>
                                          <%--  <img src="../Images/bbs/reply0.gif" border="0" alt="引用该帖子"></a>
                                                 <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>'>
                                            <img src="../Images/bbs/reply0.gif" border="0" alt="回复该帖子"></a>--%>
                                             <span class="huifu"> <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>'title="回复该帖子" >回复</a></span>
                                                 <span class="huifu"><a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>&AType=1' title="引用该帖子">引用</a></span>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="middle" colspan="2">
                            <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                                <tr style="background-color: #99ccff">
                                    <td align="left" style="white-space: nowrap; width: 260px;background-color:#f0f0ee" colspan="2">
                                        <img src="../Images/bbs/nofollow.gif">相关的回复列表
                                    </td>
                                </tr>
                                <asp:Repeater ID="rptReplyToCommitItem" runat="server" >
                                    <ItemTemplate>
                                        <tr valign="top" >
                                            <td style="width: 20%;height: 200px">
                                                作者 :
                                                <%# Eval("CnName") %>
                                                <br />
                                                <br />
                                                帖子主题:
                                                <br />
                                                <%# Eval("Reply_Subject") %>
                                            </td>
                                            <td>
                                                <%# Eval("Reply_Content")%>
                                            </td>
                                        </tr>
                                        <tr valign="top" style="background-color: #F2F8FF; height: 20px">
                                            <td style="width: 20%">
                                                <img src="../Images/bbs/time.gif" />&nbsp; &nbsp;<%# Eval("Reply_DateTime")%></td>
                                            <td align="right">
                                                <asp:HyperLink NavigateUrl='<%# Eval("Reply_ID","DownLoad.aspx?Action={0}&Infomation=1")  %>'
                                                    Target="_top" ID="LinkAttachReply" runat="server" Visible="False">[查看附件]</asp:HyperLink>
                                                <asp:HiddenField ID="HiddenAttachFlagReply" Value='<%# Eval("Reply_AttachFlag") %>' runat="server" />
                                               <span class="huifu"> <a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>'title="回复该帖子" >回复</a></span>
                                                 <span class="huifu"><a href='ReplyTo.aspx?Action=<%# Eval("Commit_ID") %>&Infomation=<%# Eval("Area_ID") %>&AType=1' title="引用该帖子">引用</a></span>
                                            <%--<img src="../Images/bbs/reply0.gif" border="0" alt="回复该帖子">--%></a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <tr>
                                    <td colspan="2" align="right" style="background-color: #f2f8ff; white-space: nowrap">
                                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonCount="20" 
                                                                PageSize="20" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                                                ShowPageIndex="False" AlwaysShow="True" ShowInputBox="Auto">
                                                            </webdiyer:AspNetPager>
                                    </td>
                                </tr>
                            </table>
                            <asp:HiddenField ID="HiddenCommitID" runat="server" />
                            <asp:HiddenField ID="HiddenCommitCurrentPageIndex" runat="server" />
                            <asp:HiddenField ID="HiddenSubAreaID" runat="server" />
                            <asp:HiddenField ID="HiddenReplyCurrentPageIndex" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">

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
