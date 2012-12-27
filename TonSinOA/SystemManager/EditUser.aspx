<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="TonSinOA.SystemManager.EditUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>编辑员工</title>
        <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
  
</head>
<body>
    <form id="form1" runat="server">
       <div class="dv" >
                    <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                        <tr>
                            <td align="right" >
                                姓名：

                            </td>
                            <td align="left" >
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                            <td align="right" >
                                状态:</td>
                            <td align="left" >
                                <input id="Radio1" type="radio" />启用 <input id="Radio2" type="radio" />禁用</td>
                        </tr>
                        <tr>
                            <td align="right" >
                               账号：</td>
                            <td align="left" >
                                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            <td align="right" >
                                密码:</td>
                            <td align="left" >
                               <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td align="right" >
                                部门：</td>
                            <td align="left" >
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" >
                                职务：</td>
                            <td align="left" >
                                 <asp:DropDownList ID="DropDownList2" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>

                        <tr>
                            <td align="right" >
                                权限：</td>
                            <td align="left" >
                                &nbsp;</td>
                            <td align="right" >
                                &nbsp;</td>
                            <td align="left" >
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" >
                                描述：</td>
                            <td align="left" colspan="3" >
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="54px" 
                                    Width="211px"></asp:TextBox>
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
                            <td align="left" >
                                &nbsp;</td>
                            <td align="left" >
                                &nbsp;</td>
                        </tr>
                    </table>
    </div>
    </form>
</body>
</html>
