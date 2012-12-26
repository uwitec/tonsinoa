<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDuty.aspx.cs" Inherits="TonSinOA.SystemManager.AddDuty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加职务</title>
<link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript">
        
    </script>
    <style type="text/css">
        #TextArea1
        {
            height: 146px;
            width: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv" style="text-align: center">
                    <table border="0" cellpadding="3" cellspacing="1" style="width: 100%; background-color: #d6eef1">
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White">
                                职务名称：

                            </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White;">
                                所属部门：</td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="120px">
                                    <asp:ListItem Selected="True">教学部</asp:ListItem>
                                    <asp:ListItem>销售部</asp:ListItem>
                                    <asp:ListItem>客服部</asp:ListItem>
                                    <asp:ListItem>技术部</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White; ">
                                描述：</td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <textarea id="TextArea1" name="S1"></textarea></td>
                        </tr>
                        <tr>
                            <td style="white-space: nowrap; background-color: White; ">
                               
                            </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
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
