<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNotice.aspx.cs" Inherits="TonSinOA.SystemManager.AddNotice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加公告</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../editor/kindeditor.js" type="text/javascript"></script>
   <%-- <script src="../editor/lang/zh_CN.js" type="text/javascript"></script> --%>
    <script src="../js/editor.config.js" type="text/javascript"></script> 
    <script type="text/javascript">
        var editor;
        $(function () {
             editor = KindEditor.create('textarea[name="S1"]',{
                    resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload: false,
					items :  items
            });
});

    </script>
    <style type="text/css">
        #TextArea1
        {
            height: 195px;
            width: 277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="dv" style="text-align: center">
                    <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                        <tr>
                            <td align="right" >
                                标题：

                            </td>
                            <td align="left" >
                                <asp:TextBox ID="TextBox1" runat="server" Width="268px" CssClass="BigInput"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                        </tr>
                        <tr>
                            <td align="right" >
                                类型：</td>
                            <td align="left" >
                                <select id="Select1" name="D1">
                                    <option selected="selected" value="1">通知</option>
                                    <option value="2">公告</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td align="right" >
                                是否置项：</td>
                            <td align="left" >
                                <input id="Radio1" name="a" type="radio" />是<input id="Radio2" name="a"  checked="checked" type="radio" />否</td>
                        </tr>
                        <tr>
                            <td align="right" >
                                内容：</td>
                            <td align="left" >
                                <textarea id="TextArea1" name="S1"></textarea></td>
                        </tr>
                        <tr>
                            <td >
                               
                            </td>
                            <td align="left" >
                                <asp:Button ID="Button2" runat="server" Text="保 存" OnClientClick="test();" CssClass="btnsubmit1" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="关 闭" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />
                            </td>
                        </tr>
                    </table>
                </div>
    </form>
</body>
</html>
