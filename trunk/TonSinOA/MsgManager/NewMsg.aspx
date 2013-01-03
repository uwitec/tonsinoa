<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMsg.aspx.cs" Inherits="TonSinOA.MsgManager.NewMsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>最新消息</title>
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
                         
                       
                            <td class="active">最新消息</td>
                            <td><a href="SendBox.aspx" >发件箱</a></td>
                            <td><a href="ReceiveBox.aspx" >收件箱</a></td>
                            <td><a href="SendMsg.aspx">写消息</a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
