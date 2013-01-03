<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReceiveBox.aspx.cs" Inherits="TonSinOA.MsgManager.ReceiveBox" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>收件箱</title>
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
                         
                       
                            <td ><a href="NewMsg.aspx" >最新消息</a></td>
                            <td><a href="SendBox.aspx" >发件箱</a></td>
                            <td class="active">收件箱</td>
                            <td><a href="SendMsg.aspx">写消息</a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="right1">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0%" valign="top">
                </td>
                <td width="99%" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" >
                                            筛选： <asp:DropDownList ID="DropDownList2" CssClass="SmallSelect" runat="server">
                                            <asp:ListItem Text="全部" Value="0" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="未读" Value="1" ></asp:ListItem>
                                                <asp:ListItem Text="已读" Value="2"></asp:ListItem>
                                               
                                            </asp:DropDownList>
                                        </td>
                                       
                                       
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <div class="envthp">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <asp:Repeater ID="dgWpView" runat="server">
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="0" cellspacing="0" class="dataTable" align="center">
                                                            <tr class="dataTableHead" align="center">
                                                            <td style="width: 30px" align="center"></td>
                                                                <td >
                                                                    收信人
                                                                </td>
                                                                <td >
                                                                    主题
                                                                </td>
                                                                <td >
                                                                   接收时间
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                        <td><input id="Checkbox1" type="checkbox" /></td>
                                                            <td align="center">
                                                                <%# Eval("UserName") %>
                                                            </td>
                                                            <td align="center">
                                                                
                                                                    <%# Eval("Title")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("SubmitTime")%>
                                                            </td>
                                                            
                                                           <td><a href="javascript:" onclick="">查看详情</a></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="25" valign="top" style="padding-top: 2px; padding-left: 6px;
                                                padding-right: 6px; padding-bottom: 2px;">
                                                <table width="100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align="left" style=" width:60px" >
                                                            <div><input id="Checkbox1" type="checkbox" /><label for="Checkbox1">全选</label></div>
                                                        </td>
                                                        <td align="left" style=" width:100px">
                                                            <input id="Button1" type="button" value="批量删除" class="btnsubmit1" />
                                                        </td>
                                                        <td align="center">
                                                            <webdiyer:AspNetPager ID="AspNetPager1" PageSize="15" runat="server" NumericButtonCount="20"
                                                                OnPageChanged="AspNetPager1_PageChanged" FirstPageText="首页" LastPageText="尾页"
                                                                NextPageText="下一页" PrevPageText="上一页" ShowPageIndex="False" AlwaysShow="True"
                                                                ShowInputBox="Always">
                                                            </webdiyer:AspNetPager>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="right2">
                                    <ul>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="0%" valign="top">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
