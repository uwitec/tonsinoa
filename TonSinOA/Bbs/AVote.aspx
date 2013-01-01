<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AVote.aspx.cs" Inherits="TonSinOA.Bbs.AVote" %>

<%@ Register Src="../UserControl/BbsTopControl.ascx" TagName="BbsTopControl" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>发起新投票</title>
 <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../editor/kindeditor.js" type="text/javascript"></script>
    <script src="../js/editor.config.js" type="text/javascript"></script>
    <script src="../js/Attach.js" type="text/javascript"></script>
    <script type="text/javascript">
        var upload_limit = 1, limit_type = "php,php3,php4,php5,";
        var editor;
        $(function () {
            editor = KindEditor.create('textarea[id="txtContent"]', {
                resizeType: 1,
                allowPreviewEmoticons: false,
                allowImageUpload: false,
                items: items
            });
        });
        </script>
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
                        <td align="left" style="height: 34px">
                            <img src="../Images/bbs/Forum_nav.gif" alt="" /><a href="BbsIndex.aspx">论坛首页 </a>
                            →我发表的帖子 → 发起投票<br />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="center">
                            <table border="0" cellpadding="4" cellspacing="1" class="tableground">
                                
                              
                                <tr >
                                    <td >
                                        专区：
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="drpAreaList" runat="server"  CssClass="BigSelect">
                                        <asp:ListItem Selected="True">NET分析与设术</asp:ListItem>
                                        <asp:ListItem>Java Web开发</asp:ListItem>
                                        <asp:ListItem>Ajax技术</asp:ListItem>
                                        <asp:ListItem>Android技术开发</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                               <%-- <tr >
                                    <td >
                                        类别：
                                    </td>
                                    <td  align="left">
                                        <asp:DropDownList ID="drpGrouplist" runat="server"  CssClass="BigSelect">
                                        </asp:DropDownList>
                                    </td>
                                </tr>--%>
                                <tr >
                                    <td >
                                        投票问题：
                                    </td>
                                    <td  align="left">
                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="BigInput" Width="441px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td >
                                        投票选项：</td>
                                    <td align="left">
                                       <table id="tbVote" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                       <tr>
                                       <td style="width:40px">选择1：</td>
                                       <td>
                                           <input id="Text1" type="text" class="BigInput" style=" width:95%" /></td>
                                       </tr>
                                       <tr>
                                        <td>选择2：</td>
                                       <td><input id="Text2" type="text" class="BigInput" style=" width:95%" /></td>
                                       </tr>
                                       </table>
                                       <a id="ovteList" href="#" onclick="javascript:AddVote()">新增投票选项</a>
                                       </td>
                                </tr>
                              
                                <tr >
                                    <td >
                                        投票类型：</td>
                                    <td align="left">
                                        &nbsp;<input id="Radio1" name="vote" type="radio" checked="checked" /><label  for="Radio1">单选</label><input id="Radio2" name="vote" type="radio" /><label  for="Radio2">多选</label></td>
                                </tr>
                              
                    <tr style="background-color: #f2f8ff">
                        <td >
                            内容：
                        </td>
                        <td align="left">
                           <textarea id="txtContent" cols="20" rows="10" style="width:100%" runat="server"></textarea>
                        </td>
                    </tr>
                      <tr >
                                    <td >
                                        附件：
                                    </td>
                                    <td  align="left">
                                        <script type="text/javascript">
                                            ShowAddFile();
                                             </script>
                                        <span class="small">附件大小不能超过10MB</span>
                                    </td>
                    </tr>
                    <tr style="background-color: #f2f8ff">
                        <td style="width: 106px">
                        </td>
                        <td align="center" valign="middle" style="white-space: nowrap">
                            <asp:Button ID="btnSumit" runat="server" Text="发表"  CssClass="btnsubmit1"/>
                            &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="btnCanel" runat="server" Text="取消" CssClass="btnsubmit1"
                                OnClientClick="history.go(-1);return false;" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            </tr> </table> </td>
        </tr>
        <tr valign="bottom">
            <td align="center" valign="bottom">
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
