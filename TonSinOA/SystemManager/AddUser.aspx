﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="TonSinOA.SystemManager.AddUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加员工</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
           <style type="text/css">

    </style> 
</head>
<body>
    <form id="form1" runat="server">
     <div class="dv" >
                    <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                        <tr>
                            <td align="right" >
                                职务名称：

                            </td>
                            <td align="left" >
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                        </tr>
                        <tr>
                            <td align="right" >
                                所属部门：</td>
                            <td align="left" >
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" >
                                描述：</td>
                            <td align="left" >
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="123px" Width="211px"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td >
                               
                            </td>
                            <td align="left" >
                                <asp:Button ID="Button2" runat="server" Text="保 存" CssClass="btnsubmit1" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="关 闭" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />
                            </td>
                        </tr>
                    </table>
    </div>
    </form>
</body>
</html>
