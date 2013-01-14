<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="TonSinOA.SystemManager.UserManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= Resources.lang.UserManager %></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/lang.js" type="text/javascript"></script>
    <script type="text/javascript">


        function addUser() {

            art.dialog.open('SystemManager/AddUser.aspx', {
                title: lang.module.system.user.adduser,
              
                lock: true,
                fixed: true //固定定位
            });
        }
        function EditUser(id) {

            art.dialog.open('SystemManager/EditUser.aspx?ID=' + id, {
                title: lang.module.system.user.edituser,
                lock: true,
                fixed: true //固定定位
            });
        }
        function delUser() {
            return confirm(lang.module.system.user.msg2);
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
                        <%= Resources.lang.UserManager %></h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                            <td class="active">
                                <%= Resources.lang.UserList %>
                            </td>
                            <td>
                                <a href="#" onclick="javascript:addUser()"><%= Resources.lang.AddUser %></a>
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
                                                                    <%= Resources.lang.Choice %>
                                                                </td>
                                                                <td style="width: 60px">
                                                                    <%= Resources.lang.State %>
                                                                </td>
                                                                <td style="width: 60px">
                                                                    <%= Resources.lang.Dep %>
                                                                </td>
                                                                <td style="width: 60px">
                                                                    <%= Resources.lang.Duty %>
                                                                </td>
                                                                <td style="width: 80px">
                                                                    <%= Resources.lang.UserAccount %>
                                                                </td>
                                                                <td style="width: 80px">
                                                                    <%= Resources.lang.UserName %>
                                                                </td>
                                                                <td style="width: 80px">
                                                                    <%= Resources.lang.Remark %>
                                                                </td>
                                                                <td style="width: 190px">
                                                                    <%= Resources.lang.Operate %>
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
                                                                <a href="#" onclick='<%# "EditUser("+ Eval("UserID")+")"%>'><%= Resources.lang.Edit %></a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" CausesValidation="false"
                                                                    CommandArgument='<%# Eval("UserID") %>' CommandName="Delete" OnClientClick="return delUser()"><%= Resources.lang.Del %></asp:LinkButton>
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
                                                            <input id="ChkAll" type="checkbox" /><%= Resources.lang.CheckAll %>  
                                                        </td>
                                                        <td  align="left"><input id="Button1" type="button" runat="server" value="<%$ Resources:lang,BatchDel %>"  class="btnsubmit1" />
                                                        </td>
                                                        <td align="center">
                                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonCount="20" OnPageChanged="AspNetPager1_PageChanged"
                                                                PageSize="20" FirstPageText="<%$ Resources:lang,Frist %>" LastPageText="<%$ Resources:lang,Last %>" NextPageText="<%$ Resources:lang,Next %>" PrevPageText="<%$ Resources:lang,Prev %>"
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
                        <img src="../images/ht28_03.gif" alt='' /></h2>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
