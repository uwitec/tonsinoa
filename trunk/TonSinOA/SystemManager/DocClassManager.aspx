<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocClassManager.aspx.cs" Inherits="TonSinOA.SystemManager.DocClassManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文档分类</title>
     <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
     <script type="text/javascript">


        function addDocClass() {

            art.dialog.open('SystemManager/AddDocClass.aspx', {
                title: '添加文档分类',
                width: 500,
                height:400,
                lock: true,
                fixed: true //固定定位
            });
        }
        function EditDocClass(id) {

            art.dialog.open('SystemManager/EditDocClass.aspx?ID=' + id, {
                title: '编辑文档分类',
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
                        文档分类管理</h1>
                </td>
                <td class="actions" width="*">
                    <%--<table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                         
                       
                            <td class="active">部门列表</td>
                            <td><a href="#" onclick="javascript:addDept()">添加部门</a></td>
                        </tr>
                    </table>--%>
                </td>
            </tr>
        </table>
    </div>
     <div class="right1">
        <%--<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0%" valign="top">
                    <h1>
                        <img src="../images/ht16_03.gif"  alt='' /></h1>
                </td>
                <td width="99%" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="154" valign="top">
                                <div class="envthp">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <asp:Repeater ID="dgDeptView" runat="server">
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="2" cellspacing="0" class="dataTable" align="center">
                                                            <tr class="dataTableHead" align="center">
                                                                <td style="width: 60px">
                                                                    序号
                                                                </td>
                                                                <td width="*">
                                                                    部门名称
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
                                                                <%# Eval("DepName")%>
                                                            </td>
                                                          
                                                            <td align="center">
                                                                <a href="#" onclick='<%# "EditDept("+ Eval("DepID")+")"%>'>编辑</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("DepID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此部门吗？')">删除</asp:LinkButton>
                                       
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
                        <img src="../images/ht28_03.gif" alt='' /></h2>
                </td>
            </tr>
        </table>--%>
         <asp:GridView ID="dgDocView" runat="server" AutoGenerateColumns="False" CssClass="tableground"
             EnableModelValidation="True" Width="100%">
             <Columns>
            
                 <asp:TemplateField>
                 <HeaderTemplate>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td align="left">根目录</td><td align="center"><a href="#" onclick="javascript:addDocClass()">新增</a></td></tr></table>
                 </HeaderTemplate>
                <ItemTemplate>
                <table width="100%" border="0" cellspacing="1" cellpadding="0" class="tableground">
                <tr><td  style="padding-left:20px"> <%# Eval("TypeName")%></td><td align="right"> <a href="#" onclick='<%# "addDocClass("+ Eval("TypeID")+")"%>'>新增</a>| <a href="#" onclick='<%# "EditDocClass("+ Eval("TypeID")+")"%>'>编辑</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("TypeID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此分类吗？')">删除</asp:LinkButton></td></tr>
                                        <tr>
                                            <td colspan="2" height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <asp:Repeater ID="dgDocSubView" runat="server"  DataSource='<%# Eval("SubTable") %>'>
                                                    <HeaderTemplate>
                                                        <table width="100%" cellspacing="1" cellpadding="3">
                                                           <%-- <tr class="dataTableHead" align="center">
                                                                <td style="width: 60px">
                                                                    序号
                                                                </td>
                                                                <td width="*">
                                                                    部门名称
                                                                </td>
                                                               
                                                                <td style="width: 190px">
                                                                    操作
                                                                </td>
                                                            </tr>--%>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                  <%--          <td align="center">
                                                                <%# Eval("RowID") %>
                                                            </td>--%>
                                                            <td align="center">
                                                                <%# Eval("TypeName")%>
                                                            </td>
                                                          
                                                            <td align="right">
                                                                <a href="#" onclick='<%# "EditDocClass("+ Eval("TypeID")+")"%>'>编辑</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("TypeID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此分类吗？')">删除</asp:LinkButton>
                                       
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
                </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
    </div>
    </form>
</body>
</html>
