<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="worklist.aspx.cs" Inherits="TonSinOA.workReport.worklist" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>工作总结报告</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
 
    <table cellpadding="0" cellspacing="0" border="0" width="100%" style="height:100%">
    <tr>
    <td  width="20%" valign="top">
    <div style="margin-top:7px">
    <table  cellpadding="0" cellspacing="0" border="0" width="100%" style="height:100%">
    <tr><td><a href="AddWork.aspx">新建报告</a></td></tr>
     <tr><td>分类查看</td></tr>
      <tr><td>按类型</td></tr>
      <tr><td>
          <select id="Select1" name="D1">
              <option value="1">工作报告</option>
              <option value="1">工作总结</option>
          </select></td></tr>
      <tr><td>按评价</td></tr>
      <tr><td><a href="#">待评价</a>
<a  href="#">已评价</a></td></tr>
      <tr><td>提交时间</td></tr>
      <tr><td><a  href="#">今天</a>
<a  href="#">昨天</a>
<a  href="#">本周</a>
<a  href="#">上一周</a>
<a  href="#">本月</a></td></tr>
      <tr><td>提交人</td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td>
          <input id="Text1" type="text" class="BigInput" /><input id="Button1" 
              type="button" value="搜索" /></td></tr>
    </table>
    </div>
    </td>
    <td  width="80%" >
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0%" valign="top">
                  
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
                                                <asp:Repeater ID="dgWpView" runat="server" >
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="0" cellspacing="0" class="dataTable" align="center">
                                                            <tr class="dataTableHead" align="center">
                                                              
                                                                <td style="width: 15%">
                                                                    报告类型
                                                                </td>
                                                                <td style="width: 35%">
                                                                    报告标题
                                                                </td>
                                                                <td style="width: 20%">
                                                                    提交时间
                                                                </td>
                                                                <td style="width: 15%">
                                                                    向谁汇报
                                                                </td>
                                                                <td style="width: 15%">
                                                                    创建人
                                                                </td>
                                                         
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                           
                                                            <td align="center">
                                                                <%# Eval("TypeName") %>
                                                            </td>
                                                            <td align="center">
                                                              <a href="LookWork.aspx"><%# Eval("Title")%></a>
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
                                                            &nbsp;</td>
                                                        <td  align="left">&nbsp;</td>
                                                        <td align="center">
                                                            <webdiyer:AspNetPager ID="AspNetPager1" PageSize="15" runat="server" NumericButtonCount="20" OnPageChanged="AspNetPager1_PageChanged"
                                                                FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
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
                   
                </td>
            </tr>
        </table>
    </td>
    </tr>
    </table>

    </form>
</body>
</html>
