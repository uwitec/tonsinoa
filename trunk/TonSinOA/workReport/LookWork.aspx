<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LookWork.aspx.cs" Inherits="TonSinOA.workReport.LookWork" %>

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
                <td align="left">
                   <a href="worklist.aspx">返回工作报告</a> </td>
                <td align="right">
                    分享&nbsp;&nbsp; 打印</td>
            </tr>
            <tr>
                <td align="right">
                    报告类型：
                </td>
                <td align="left">
                    工作报告</td>
            </tr>
            <tr>
                <td align="right" >
                    时间：
                </td>
                <td align="left">
                    2012-12-29
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
                    戴维</td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;抄送：
                </td>
                <td align="left">
                   李四,张校长，李校长</td>
            </tr>
            <tr>
                <td align="right">
                    报告内容:
                </td>
                <td align="left">
                    &nbsp;中关村中心12月工作报告，
                    完成工作内容:<br />
                    <br />
&nbsp;存在问题:<br />
                    <br />
&nbsp;详见附件。<br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    报告附件：
                </td>
                <td align="left">
                   中关村中心12月工作报告.doc</td>
            </tr>
            <tr>
                <td align="right">评价
                </td>
                <td align="left">
                   <select id="Select2" name="D1" class="SmallSelect">
                        <option selected="selected" value="1">已阅</option>
                        <option value="2">非常好</option>
                        <option value="2">加油</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="right">评语
                </td>
                <td align="left">
              报告内容详实，丰满，希望再接再厉！
                </td>
            </tr>
        </table>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="100%" >
        <tr>
        <td align="left" colspan="2">有1条讨论</td>

        </tr>
          <tr>
        <td  align="left" >2012-12-05 10:56 高明二说... </td>
        <td  align="right"  ></td>
    
        </tr>
          <tr>
        <td  align="left" >这个报告写的确实不错！</td>
        <td  align="right"  >&nbsp;</td>
    
        </tr>
          <tr>
        <td  align="left" > 李二说... </td>
        <td  align="right"  ></td>
    
        </tr>
          <tr>
        <td  align="left" >
            <textarea id="TextArea1" cols="50" name="S1" rows="5"></textarea></td>
        <td  align="right"  >&nbsp;</td>
    
        </tr>
          <tr>
        <td  align="left" >
            <input id="Button1" type="button" class="btnsubmit1" value="发表" /></td>
        <td  align="right"  >&nbsp;</td>
    
        </tr>
        </table>
    </div>
    </form>
</body>
</html>

