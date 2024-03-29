﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="worklist.aspx.cs" Inherits="TonSinOA.workReport.worklist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>工作总结报告</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 7px;">
        <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        工作总结</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                              <td class="active">
                                报告列表
                            </td>
                            <td>
                                <a href="AddWork.aspx">新建报告</a>
                            </td>
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
                                        <td align="right" style="width:5%">
                                            类型：
                                        </td>
                                        <td  style="width:10%">
                                            <asp:DropDownList ID="DropDownList1" CssClass="SmallSelect" runat="server">
                                            <asp:ListItem Text="全部" Value="0" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="工作报告" Value="1" ></asp:ListItem>
                                                <asp:ListItem Text="工作报告" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="其它报告" Value="3"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="right" style="width:5%">
                                            评价：
                                        </td>
                                        <td style="width:5%">
                                            <select id="Select2" name="D2">
                                             <option>全部</option>
                                                 <option>待评价</option>
                                                  <option>已评价</option>
                                            </select>
                                        </td>
                                        <td align="right" style="width:8%">
                                            提交时间：
                                        </td>
                                        <td style="width:30%">
                                            <select id="SSubmitTime" name="D3">
                                                <option>今天</option>
                                                <option>昨天</option>
                                                <option>本周</option>
                                                <option>上一周</option>
                                                <option>本月</option>
                                                <option>指定时间</option>
                                            </select>
                                            <span id="anytime" style="display:none">
                                           从： <input id="txtStartTime" type="text"class="SmallInput" style="width:60px" onfocus="WdatePicker({skin:'whyGreen'})" />到：<input id="txtEndTime" type="text" style="width:60px" class="SmallInput"  onfocus="WdatePicker({skin:'whyGreen'})" /></span></td>
                                        <td align="right" style="width:8%">
                                            提交人：
                                        </td>
                                        <td style="width:10%">
                                            <input id="Text3" class="SmallInput" style="width:60px" readonly="" type="text" />
                                            <a class="orgAdd"  href="javascript:;">选择</a>
                                        </td>
                                        <td style="width:8%">
                                            <input id="Text2" class="SmallInput" style="width:80px" type="text" />
                                        </td>
                                        <td style="width:5%">
                                            <input id="Button2" type="button" class="btnsubmit3" value="搜索" />
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
                                                                <td style="width: 15%">
                                                                    报告类型
                                                                </td>
                                                                <td style="width: 35%">
                                                                    报告标题
                                                                </td>
                                                                <td style="width: 15%">
                                                                    提交时间
                                                                </td>
                                                                <td style="width: 15%">
                                                                    向谁汇报
                                                                </td>
                                                                <td style="width: 10%">
                                                                    创建人
                                                                </td>
                                                                 <td style="width: 10%">
                                                                    
                                                                </td>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="center">
                                                                <%# Eval("TypeName") %>
                                                            </td>
                                                            <td align="center">
                                                                <a href="LookWork.aspx">
                                                                    <%# Eval("Title")%></a>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("SubmitTime")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("UserAccount")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("CreatUser")%>
                                                            </td>
                                                            <td align="center">
                                                                <a href="AddWork.aspx?id="<%# Eval("CreatUser")%>>查看</a>
                                                            </td>
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
                                                        <td align="center" style="width: 100px">
                                                            &nbsp;
                                                        </td>
                                                        <td align="left">
                                                            &nbsp;
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
