<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTask.aspx.cs" Inherits="TonSinOA.ProjectManager.EditTask" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
        <table border="0" cellpadding="3" cellspacing="1" class="tableground">
            <tr>
                <td align="left">
                   <img  src="../images/edit.gif" alt="">
<span class="big3"> 编辑任务</span>
                    </td>
                <td  align="right"> <a href="projectlist.aspx"><span>返回</span></a></td>
            </tr>
            <tr>
                <td align="right">
                    任务名称：
                </td>
                <td align="left">
                    <input id="Text2" type="text" class="BigInput" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    开始时间：
                </td>
                <td align="left">
                    <input id="txtDateTime" type="text" class="BigInput" onfocus="WdatePicker({skin:'whyGreen'})" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    结束时间：
                </td>
                <td align="left">
                    <input id="Text1" type="text" class="BigInput" onfocus="WdatePicker({skin:'whyGreen'})" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    检视点：
                </td>
                <td align="left">
                    <textarea id="TextArea3" rows="2" name="S3" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    方法：
                </td>
                <td align="left">
                    <textarea id="TextArea4" rows="2" name="S4" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    关键控制点：
                </td>
                <td align="left">
                    <textarea id="TextArea5" rows="2" name="S5" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    力度：
                </td>
                <td align="left">
                    <textarea id="TextArea6" rows="2" name="S6" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    检视人：
                </td>
                <td align="left">
                    <input id="Text4" type="text" class="BigInput" readonly="" />
                    <a class="orgAdd" href="javascript:;">选择</a>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;责任人：
                </td>
                <td align="left">
                    <input id="Text3" type="text" class="BigInput" readonly="" />
                    <a class="orgAdd" href="javascript:;">选择</a>
                </td>
            </tr>
            <tr>
                <td align="right">
                    乐捐：
                </td>
                <td align="left">
                    <input id="Text5" type="text" class="BigInput" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    当前进度：
                </td>
                <td align="left">
                    <textarea id="TextArea7" rows="2" name="S7" cols="60"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    状态：
                </td>
                <td align="left">
                    &nbsp;<select id="Select1" name="D1">
                        <option>请选择</option>
                        <option>进行中</option>
                        <option>已完结</option>
                        <option>已延期</option>
                    </select>
                </td>
            </tr>
           
            <tr>
                <td>
                </td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" Text="提 交" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input id="Button1" type="button" class="btnsubmit1" value="取 消" />
                   <%-- <asp:Button ID="Button3" runat="server" Text="取 消" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />--%>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
