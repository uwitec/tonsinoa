<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostNewSelect.aspx.cs"
    Inherits="TonSinOA.Bbs.PostNewSelect" %>

<%@ Register Src="../UserControl/BbsTopControl.ascx" TagName="BbsTopControl" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>发贴</title>
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
                            <img src="../Images/bbs/Forum_nav.gif" alt="" /><a href="BbsIndex.aspx">论坛首页 </a>→我发表的帖子
                            → 发表新帖
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="center">
                            <table border="0" cellpadding="4" cellspacing="1" class="tablegroundbbs">
                                <tr >
                                    <td >
                                        主题：
                                    </td>
                                    <td  align="left">
                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="BigInput" Width="441px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td >
                                        类别：
                                    </td>
                                    <td  align="left">
                                        <asp:DropDownList ID="drpGrouplist" runat="server"  CssClass="BigSelect">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr >
                                    <td >
                                        专区：
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="drpAreaList" runat="server"  CssClass="BigSelect">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr >
                                    <td >
                                        附件：
                                    </td>
                                    <td  align="left">
                                        <script>
                                            ShowAddFile();
                                             </script>
                                        <span class="small">附件大小不能超过10MB</span>
                                    </td>
                    </tr>
                    <tr style="background-color: #f2f8ff">
                        <td >
                            内容：
                        </td>
                        <td align="left">
                           <textarea id="txtContent" cols="20" rows="20" style="width:100%" runat="server"></textarea>
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
