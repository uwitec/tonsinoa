<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMsg.aspx.cs" Inherits="TonSinOA.MsgManager.SendMsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>写消息</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
    <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        消息管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                         
                       
                            <td ><a href="NewMsg.aspx">最新消息</a></td>
                            <td><a href="SendBox.aspx" >发件箱</a></td>
                            <td><a href="ReceiveBox.aspx" >收件箱</a></td>
                            <td class="active">写消息</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
        <div class="dv">
        <table border="0" cellpadding="3" cellspacing="1" class="tableground">
  
          
  
            <tr>
                <td align="right">
                    收件人：
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
                   主题：
                </td>
                <td align="left">
                     <input id="Text1" type="text" class="BigInput" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    正文：
                </td>
                <td align="left">
                    <textarea id="ReportContent" class="BigInput" name="ReportContent" rows="10" cols="60"></textarea>
                </td>
            </tr>
              <tr>
                <td align="right">
                    
                </td>
                <td align="left">
                   <input id="Checkbox1" type="checkbox" />邮件通知  <input id="Checkbox2" type="checkbox" />系统消息
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" Text="发送消息" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="取 消" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
