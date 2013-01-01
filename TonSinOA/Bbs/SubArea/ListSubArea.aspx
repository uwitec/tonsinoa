<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSubArea.aspx.cs" Inherits="TonSinOA.Bbs.SubArea.ListSubArea" %>


<%@ Register src="../../UserControl/BbsAdminTopControl.ascx" tagname="BbsAdminTopControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                         分区管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                           
                            <td>
                                <a href="AddSubArea.aspx" >新建分区论坛</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </td>
            </tr>
            <tr valign="top">
                <td valign="top">
        <div class="right1">
             <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0%" valign="top">
                </td>
                <td width="99%" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="right" >
                                            分类过滤条件：<asp:DropDownList ID="DropDownList1" CssClass="SmallSelect" runat="server">
                                            <asp:ListItem Text="全部" Value="0" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Net技术" Value="1" ></asp:ListItem>
                                                <asp:ListItem Text="Java技术" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="移动平台" Value="3"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                       
                                    
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <div class="envthp">
                                   <table border="0" cellpadding="3" cellspacing="1" class="dataTable">
                                    <tr  class="dataTableHead" >
                            <td align="center">
                                创建人
                            </td>
                            <td align="center">
                                分区名称
                            </td>
                            <td align="center">
                                创建日期
                            </td>
                            <td align="center">
                                所属类别
                            </td>
                            <td align="center">
                                备注说明
                            </td>
                            <td align="center">
                                查看该区的帖子
                            </td>
                            <td align="center">
                                编辑
                            </td>
                            <td align="center" style="width: 93px">
                                删除
                            </td>
                        </tr>
                        <asp:Repeater ID="RepeaMain" runat="server" OnItemCommand="RepeaMain_ItemCommand"
                            OnItemDataBound="RepeaMain_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                      <%# Eval("CnName") %>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <a href="#" onclick="return SubAreaViewClick('<%# Eval("Area_ID") %>')">
                                            <%# Eval("Area_Name") %>
                                        </a>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <%# Eval("Area_CreateDate") %>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <a href="#" onclick="return GroupViewClick('<%# Eval("Group_ID") %>')" title="详细信息">
                                            <%# Eval("Group_Name") %>
                                        </a>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <%# Eval("Area_Remark") %>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <a href="../ForumManage/ListForum.aspx?Action=<%# Eval("Area_ID") %>" title="查看该区的所有帖子">
                                            帖子列表</a>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <a href="EditSubArea.aspx?Action=<%# Eval("Area_ID") %>&Add=No" title="编辑该区的内容">编辑</a>
                                    </td>
                                    <td align="center" style="white-space: nowrap; background-color: White">
                                        <asp:LinkButton ID="btnDelte" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Area_ID") %>'
                                            OnClientClick="return confirm('如果将分区删除,则其下的帖子将一并删除,你确定要删除吗？')">删除</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr style="background-color: #f2f8ff">
                            <td colspan="8" align="right" style="white-space: nowrap">
                               
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
             
       </div>
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
