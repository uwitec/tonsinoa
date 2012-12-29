<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddWork.aspx.cs" Inherits="TonSinOA.workReport.AddWork" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="../editor/kindeditor.js" type="text/javascript"></script>
    <%-- <script src="../editor/lang/zh_CN.js" type="text/javascript"></script> --%>
    <script src="../js/editor.config.js" type="text/javascript"></script>
    <script type="text/javascript">
        var editor;
        $(function () {
            editor = KindEditor.create('textarea[id="ReportContent"]', {
                resizeType: 1,
                allowPreviewEmoticons: false,
                allowImageUpload: false,
                items: simpleItmes
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
        <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                 <tr>
                <td align="left" colspan="2">
                   <a href="worklist.aspx">返回工作报告</a> </td>
            </tr>
            <tr>
                <td align="right">
                    报告类型：
                </td>
                <td align="left">
                    <select id="Select1" name="D1" class="SmallSelect">
                        <option selected="selected" value="1">工作报告</option>
                        <option value="2">其它报告</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="right" >
                    时间：
                </td>
                <td align="left">
                    <input id="txtDateTime" type="text" class="BigInput" onfocus="WdatePicker({skin:'whyGreen'})" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    创建人：
                </td>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text="张三"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    向谁汇报：
                </td>
                <td align="left">
                    <textarea id="TextArea1" class="BigStatic" readonly="" wrap="yes" rows="2" name="S1"
                        cols="45"></textarea>
                    <a class="orgAdd" href="javascript:;">添加</a> <a class="orgClear" href="javascript:;">
                        清空</a>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;抄送：
                </td>
                <td align="left">
                    <textarea id="TextArea2" class="BigStatic" readonly="" wrap="yes" rows="2" name="S2"
                        cols="45"></textarea>
                    <a class="orgAdd" href="javascript:;">添加</a> <a class="orgClear" href="javascript:;">
                        清空</a>
                </td>
            </tr>
            <tr>
                <td align="right">
                    报告内容:
                </td>
                <td align="left">
                    <textarea id="ReportContent" name="ReportContent" rows="10" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    报告附件：
                </td>
                <td align="left">
                <span id="ATTACHMENT_div"></span>
                    <a class="addfile" href="javascript:;">添加附件
                        <input class="addfile" type="file" size="1" />
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" Text="提 交" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="取 消" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
