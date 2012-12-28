<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkReportManager.aspx.cs" Inherits="TonSinOA.SystemManager.ReportManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>报告总结分类</title>
     <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script type="text/javascript">


        function addWorkReport() {

            art.dialog.open('SystemManager/AddWorkReport.aspx', {
                title: '添加报告总结分类',
                lock: true,
                fixed: true //固定定位
            });
        }
        function EditWorkReport(id) {

            art.dialog.open('SystemManager/EditWorkReport.aspx?ID=' + id, {
                title: '编辑报告总结分类',
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
                        报告总结分类</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                         
                       
                            <td class="active">列表</td>
                            <td><a href="#" onclick="javascript:addWorkReport()">添加分类</a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
     <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" 
            >
            <tr>
                <td width="0%" valign="top" >
                    <h1>
                        <img src="../images/ht16_03.gif"   alt='' /></h1>
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
                                                <asp:Repeater ID="dgReportView" runat="server">
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="2" cellspacing="0" class="dataTable" align="center">
                                                            <tr class="dataTableHead" align="center">
                                                                <td style="width: 60px">
                                                                    序号
                                                                </td>
                                                                <td width="*">
                                                                    名称
                                                                </td>
                                              
                                                               
                                                                <td style="width: 190px">
                                                                    操作
                                                                </td>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="center">
                                                                <%# Eval("RowID") %>
                                                            </td>
                                                    
                                                            <td align="center">
                                                                <%# Eval("ReportName")%>
                                                            </td>
                                                          
                                                            <td align="center">
                                                                <a href="#" onclick='<%# "EditWorkReport("+ Eval("ReportID")+")"%>'>编辑</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("ReportID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此报告吗？')">删除</asp:LinkButton>
                                       
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
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
                        <img src="../images/ht16_03.gif"  alt='' /></h2>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
