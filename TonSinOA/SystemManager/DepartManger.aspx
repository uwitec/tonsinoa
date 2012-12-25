<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartManger.aspx.cs" Inherits="TonSinOA.SystemManager.DepartManger" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/easyui/default/easyui.css" rel="stylesheet" 
        type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {
//            $('#dgDeptView').datagrid({
//                url: 'datagrid_data2.json',
//                title: 'DataGrid - ContextMenu',
//                width: 'auto',
//                height: 'auto',
//                fitColumns: true,
//                columns: [[
//					{ field: 'rowid', title: '序号', width: 80 },
//					{ field: 'depname', title: '部门名称', width: 120 },
//					{ field: 'listprice', title: 'List Price', width: 80, align: 'right' },
//					{ field: 'unitcost', title: 'Unit Cost', width: 80, align: 'right' },
//					{ field: 'attr1', title: 'Attribute', width: 250 },
//					{ field: 'status', title: 'Status', width: 60, align: 'center' }
//				]]
//            });
        });
        function addDept() {

            art.dialog.open('SystemManager/AddDept.aspx', {
                title: '添加部门',
                lock: true,
                width: 500,
                height: 400,
                fixed: true //固定定位
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table style="width: 100%; background-color: #d6eef1" cellspacing="1" cellpadding="3"
                    border="0">
                    <tr>
                        <td align="left" style="white-space: nowrap; background-color: White">
                            系统管理&gt;&gt;部门管理</td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap; background-color: white" align="left">
                           <a href="#" onclick="javascript:addDept()">添加部门</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap; background-color: white">
                       <%-- <table id="dgDeptView"></table>--%>
                          <asp:GridView ID="dgDeptView" CssClass="datagrid-htable" runat="server" 
                                AutoGenerateColumns="False"   Width="100%"
                                EnableModelValidation="True" CellPadding="4" BackColor="White" 
                                BorderColor="Gray" BorderStyle="None" BorderWidth="1px">
                                <Columns>
                                    <asp:BoundField DataField="RowID" HeaderText="序号"  >
                                    <HeaderStyle HorizontalAlign="Left" Width="20px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DepName" HeaderText="部门名称" >
                                    <HeaderStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnEdit" runat="server" CausesValidation="False" 
                                                CommandArgument='<%# Eval("DepID") %>' ToolTip="编辑部门">编辑</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("DepID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此部门吗？')">删除</asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                </Columns>
                              
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                              
                                <HeaderStyle CssClass="datagrid-header"  />
                               
                                
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White"  />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True"  />
                               
                                
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap; background-color: white">
                           <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页"                
                NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageSize="10" PrevPageText="上一页"
                ShowCustomInfoSection="Left" SubmitButtonText="GO" Width="100%">
            </webdiyer:AspNetPager>
                        </td>
                    </tr>
                </table>
    </div>
<%--      <table border="0" cellpadding="3" cellspacing="1" style="width: 100%; background-color: #d6eef1">
                   <tr>
                        <td colspan="4" align="center" style="white-space: nowrap; background-color: White">
                            ［用户编辑］
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: White;">
                            <nobr> 登录名称：</nobr>
                        </td>
                        <td align="left" style="white-space: nowrap; background-color: White;" colspan="3">
                            <radI:RadTextBox ID="txtLoginName" runat="server" LabelCssClass="radLabelCss_Default"
                                Skin="Office2007" Width="204px">
                            </radI:RadTextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginName"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white">
                            <nobr>姓名：</nobr>
                        </td>
                        <td align="left" style="white-space: nowrap; background-color: white" colspan="3">
                            <radI:RadTextBox ID="txtCnName" runat="server" LabelCssClass="radLabelCss_Default"
                                Skin="Office2007" Width="206px">
                            </radI:RadTextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCnName"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white">
                            <nobr>性别：</nobr>
                        </td>
                        <td align="left" style="white-space: nowrap; background-color: white" colspan="3">
                            <nobr>
                                    <asp:RadioButton ID="rdoBoy" runat="server" Checked="True" GroupName="Q" Text="男" />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:RadioButton ID="rdoGirl" runat="server" GroupName="Q" Text="女" /></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white;">
                            <nobr> 所属角色：</nobr>
                        </td>
                        <td align="left" colspan="3" style="white-space: nowrap; background-color: white;">
                            <radI:RadTextBox ID="txtListRole" runat="server" LabelCssClass="radLabelCss_Default"
                             ReadOnly="true"   Skin="Office2007" Width="350px">
                            </radI:RadTextBox>
                            <input type="image" align="middle" id="Image1" onclick="return ShowSelectRole()" src="../../../Images/Common/lookthrough.gif" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white;">
                            <nobr>所属部门：</nobr>
                        </td>
                        <td colspan="3" align="left" style="white-space: nowrap; background-color: white;">
                            <radC:RadComboBox ID="drpListDept" runat="server" Skin="Office2007" SkinsPath="~/RadControls/ComboBox/Skins"
                                Width="214px">
                            </radC:RadComboBox>
                        </td>
                    </tr>                   
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white;">
                            <nobr>联系电话：</nobr>
                        </td>
                        <td align="left" style="white-space: nowrap; background-color: white;" colspan="3">
                            <radI:RadTextBox ID="txtMovePhone" runat="server" LabelCssClass="radLabelCss_Default"
                                Skin="Office2007" Width="206px">
                            </radI:RadTextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMovePhone"
                                ErrorMessage="*号码无效*" SetFocusOnError="True" ValidationExpression="(^0\d{2,3}-\d{7,8}$)|(^0\d{2,3}-\d{7,8}-(\d{2,3}|\d{3,4})$)|(^\d{4}-\d{7,8}-\d{3,4}$)"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white">
                            电子邮箱：</td>
                        <td align="left" style="white-space: nowrap; background-color: white" colspan="3">
                            <radI:RadTextBox ID="txtEmail" runat="server" LabelCssClass="radLabelCss_Default"
                                Skin="Office2007" Width="208px">
                            </radI:RadTextBox>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtEmail" ErrorMessage="*地址无效*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td align="right" style="white-space: nowrap; background-color: white;">
                        </td>
                        <td align="left" style="white-space: nowrap; background-color: white;" colspan="3">
                            <nobr><asp:ImageButton id="btnUpdate" onclick="btnUpdate_Click" runat="server" ImageUrl="~/Images/Common/save.gif" ></asp:ImageButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</nobr>
                        </td>
                    
                    </tr>
                </table>--%>
    </form>
</body>
</html>
