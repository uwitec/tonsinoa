<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="TonSinOA.SystemManager.AddUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= Resources.lang.AddUser %></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/lang.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSave").click(function () { 
            
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="dv" >
                    <table border="0" cellpadding="3" cellspacing="1" class="tableground">
                        <tr>
                            <td align="right" >
                                <%= Resources.lang.UserName %>:

                            </td>
                            <td align="left" >
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                            <td align="right" >
                                <%= Resources.lang.State %>:</td>
                            <td align="left" >
                                <input id="radEnabled" type="radio" name="radState" runat="server" /><%= Resources.lang.Enabled %> <input id="radDisabled" type="radio" name="radState" runat="server"  />禁用</td>
                        </tr>
                        <tr>
                            <td align="right" >
                                <%= Resources.lang.UserAccount %>:</td>
                            <td align="left" >
                                 <asp:TextBox ID="txtUserAccount" runat="server"></asp:TextBox></td>
                            <td align="right" >
                                 <%= Resources.lang.Password %>:</td>
                            <td align="left" >
                               <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td align="right" >
                                 <%= Resources.lang.Dep %>:</td>
                            <td align="left" >
                                <asp:DropDownList ID="drpDep" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" >
                                 <%= Resources.lang.Duty %>:</td>
                            <td align="left" >
                                 <asp:DropDownList ID="drpDuty" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>

                        <tr>
                            <td align="right" >
                                <%= Resources.lang.TheGroup %>:</td>
                            <td align="left" >
                                <asp:DropDownList ID="drpGroup" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">请选择</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" >
                                &nbsp;</td>
                            <td align="left" >
                                 &nbsp;</td>
                        </tr>

                        <tr>
                            <td align="right" >
                                 <%= Resources.lang.Role %>:</td>
                            <td align="left" >
                               <asp:DropDownList ID="drpRole" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="right" >
                                <%= Resources.lang.Permission %>:</td>
                            <td align="left" >
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" >
                                 <%= Resources.lang.Remark %>:</td>
                            <td align="left" colspan="4" >
                                <asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Height="54px" 
                                    Width="100%"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td >
                               
                            </td>
                            <td align="left" >
                               
                            </td>
                            <td align="left" >
                                <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:lang,Save %>" 
                                    CssClass="btnsubmit1" onclick="btnSave_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClose" runat="server" Text="<%$ Resources:lang,Close %>" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" /></td>
                            <td align="left" >
                                &nbsp;</td>
                        </tr>
                    </table>
    </div>
    </form>
</body>
</html>
