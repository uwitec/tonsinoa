<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListGroup.aspx.cs" Inherits="TonSinOA.Bbs.Group.ListGroup" %>

<%@ Register src="../../UserControl/BbsAdminTopControl.ascx" tagname="BbsAdminTopControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
 <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="white-space: nowrap" align="center" valign="middle">
                   
                    <uc1:BbsAdminTopControl ID="BbsAdminTopControl1" runat="server" />
                   
                </td>
            </tr>
            <tr>
            <td>       <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                         分类管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                           
                            <td>
                                <a href="AddGroup.aspx" >新建分类论坛</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table></td>
            </tr>
            <tr valign="top">
                <td valign="top">
        
               <table align="center" border="0" cellpadding="3" cellspacing="1"  class="dataTable"  width="100%">
                                    <tr  class="dataTableHead" >
                                        <td align="center">
                                            类别名称
                                        </td>
                                        <td align="center">
                                            创建日期
                                        </td>
                                        <td align="center">
                                            创建人

                                        </td>
                                        <td align="center">
                                            备注说明
                                        </td>
                                        <td align="center">
                                            查看该类的分区

                                        </td>
                                        <td align="center">
                                            操作
                                        </td>
                                        
                                    </tr>
                                    <asp:Repeater ID="dgGroupView" runat="server" >
                                        <ItemTemplate>
                                            <tr>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <a href="#">
                                                        <%# Eval("GroupName") %>
                                                    </a>
                                                </td>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <%# Eval("CreatTime")%>
                                                </td>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <%# Eval("CreatUser")%>
                                                </td>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <%# Eval("Remark") %>
                                                </td>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <a href="../SubArea/ListSubArea.aspx?Action=<%# Eval("GroupID") %>">查看分区</a>
                                                </td>
                                                <td align="center" style="white-space: nowrap; background-color: White">
                                                    <a href="EditGroup.aspx?Action=<%# Eval("GroupID") %>&Add=No">编辑</a>
                                                
                                                    <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("GroupID")%>'>删除</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <tr style="background-color: #f2f8ff">
                                        <td colspan="7" align="right">
                                           
                                        </td>
                                    </tr>
                                </table>
       
                </td>
            </tr>
            <tr valign="bottom">
                <td align="center" valign="bottom">
                   
                </td>
            </tr>
        </table></div>
    </form>
</body>
</html>
