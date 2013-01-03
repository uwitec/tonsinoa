<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMsg.aspx.cs" Inherits="TonSinOA.MsgManager.NewMsg" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
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
                            <td class="active">
                                最新消息
                            </td>
                            <td>
                                <a href="SendBox.aspx">发件箱</a>
                            </td>
                            <td>
                                <a href="ReceiveBox.aspx">收件箱</a>
                            </td>
                            <td>
                                <a href="SendMsg.aspx">写消息</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
        </table>
    </div>
    <div class="dv">
        <asp:DataList ID="dgNewView" runat="server" Width="100%">
            <ItemTemplate>
                <table border="0" cellpadding="0" cellspacing="1" class="tableground">
                    <tr>
                        <td style=" width:60px" valign="middle">
                        <img src="../images/PersonMessage.png" alt="" />
                        </td>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td align="left">
                                        <p>
                                            [<span style="color: green"><%# Eval("SendUser")%></span> <span>发送至</span> <span><%# Eval("ReceiveUser")%></span>;
                                            <span><%# Eval("SendTime")%></span>] <span class="discreet">已读</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <h4>
                                            <%# Eval("Title")%></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <div>
                                            <%# Eval("Content")%></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SeparatorTemplate>
            
            </SeparatorTemplate>
        </asp:DataList>
    
    </div>
    <div class="div">  <table width="100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        
                                                        <td align="center">
                                                            <webdiyer:AspNetPager ID="AspNetPager1" PageSize="15" runat="server" NumericButtonCount="20"
                                                                OnPageChanged="AspNetPager1_PageChanged" FirstPageText="首页" LastPageText="尾页"
                                                                NextPageText="下一页" PrevPageText="上一页" ShowPageIndex="False" AlwaysShow="True"
                                                                ShowInputBox="Always">
                                                            </webdiyer:AspNetPager>
                                                        </td>
                                                    </tr>
                                                </table></div>
    </form>
</body>
</html>
