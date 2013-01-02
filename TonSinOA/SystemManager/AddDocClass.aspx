<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDocClass.aspx.cs" Inherits="TonSinOA.SystemManager.AddDocClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加文档分类</title>
 <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript">
        
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv" style="text-align: center">
                    <table border="0" cellpadding="3" cellspacing="1" style="width: 100%; background-color: #d6eef1">
                         <tr>
                            <td align="right" style="white-space: nowrap; background-color: White;">
                                &nbsp;状态：</td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <input id="Radio1" type="radio" />启用 <input id="Radio2" type="radio" />禁用</td>
                        </tr>
                         <tr>
                            <td align="right" style="white-space: nowrap; background-color: White;">
                                所属上级：</td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:TextBox ID="TextBox2" runat="server"  CssClass="BigInput" Width="115px"></asp:TextBox>
                                 <a class="orgAdd" href="javascript:;">选择</a>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White">
                                名称：

                            </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="BigInput"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                        </tr>
                      
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White; ">
                               描述：</td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <textarea id="TextArea1" name="S1" rows="5" cols="60" class="BigInput"></textarea></td>
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
