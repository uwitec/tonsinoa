<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="TonSinOA.SystemManager.UserManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script type="text/javascript">


        function addUser() {

            art.dialog.open('SystemManager/AddUser.aspx', {
                title: '添加员工',
                width: 500,
                height:400,
                lock: true,
                fixed: true //固定定位
            });
        }
        function EditUser(id) {

            art.dialog.open('SystemManager/EditUser.aspx?ID=' + id, {
                title: '编辑员工',
                lock: true,
                fixed: true //固定定位
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 7px;">
        <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        用户管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                            <td class="active">
                                员工列表
                            </td>
                            <td>
                                <a href="#" onclick="javascript:addUser()">添加员工</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0%" valign="top">
                    <h1>
                        <img src="../images/ht16_03.gif" alt='' /></h1>
                </td>
                <td width="99%" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td valign="top">
                                <div class="envthp">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <asp:Repeater ID="dgUserView" runat="server">
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="2" cellspacing="0" class="dataTable" align="center">
                                                            <tr class="dataTableHead" align="center">
                                                                <td style="width: 60px">
                                                                    选择
                                                                </td>
                                                                <td style="width: 60px">
                                                                    状态
                                                                </td>
                                                                <td style="width: 60px">
                                                                    部门
                                                                </td>
                                                                <td style="width: 60px">
                                                                    职务
                                                                </td>
                                                                <td style="width: 80px">
                                                                    账号
                                                                </td>
                                                                <td style="width: 80px">
                                                                    姓名
                                                                </td>
                                                                <td style="width: 80px">
                                                                    备注
                                                                </td>
                                                                <td style="width: 190px">
                                                                    操作
                                                                </td>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="center">
                                                                <input id="Checkbox1" type="checkbox" value="<%# Eval("UserID") %>" />
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("State") %>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("DepName")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("DutyName")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("UserAccount")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("UserName")%>
                                                            </td>
                                                            <td align="center">
                                                                <%# Eval("Remark")%>
                                                            </td>
                                                            <td align="center">
                                                                <a href="#" onclick='<%# "EditUser("+ Eval("UserID")+")"%>'>编辑</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" CausesValidation="false"
                                                                    CommandArgument='<%# Eval("UserID") %>' CommandName="Delete" OnClientClick="return confirm('您确定要删除此职务吗？')">删除</asp:LinkButton>
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
                                            <td align="center" height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <table width="100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align="center" style="width: 100px">
                                                            <input id="Checkbox1" type="checkbox" />全选
                                                        </td>
                                                        <td  align="left"><input id="Button1" type="button" value="批量删除" class="btnsubmit1" />
                                                        </td>
                                                        <td align="center">
                                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonCount="20" OnPageChanged="AspNetPager1_PageChanged"
                                                                PageSize="20" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                                                ShowPageIndex="False" AlwaysShow="True" ShowInputBox="Always">
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
                    <h2>
                        <img src="../images/ht16_03.gif" alt='' /></h2>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
