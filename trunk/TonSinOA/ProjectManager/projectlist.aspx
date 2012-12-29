<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectlist.aspx.cs" Inherits="TonSinOA.ProjectManager.projectlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>项目管理</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {


        });
        var show = function (projectid, obj) {
            if (document.getElementById(projectid).style.display == "none") {
                document.getElementById(projectid).style.display = "block";
              
            }
            else {
                document.getElementById(projectid).style.display = "none";
               
            }
        };
        var AddProject = function () {
            $("#txtProjectName").val("")
            art.dialog({
                title: "新建项目",
                lock: true,
                opacity: 0.01,
            content: document.getElementById("projectDailog")
            });
    }
    var EditProject = function (id) {
       $("#txtProjectName").val("项目名称")
        art.dialog({
            title: "修改项目",
            lock: true,
            opacity: 0.01,
            content: document.getElementById("projectDailog")
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
                        项目管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                            <%--  <td class="active">
                                员工列表
                            </td>--%>
                            <td>
                               <a href="#" onclick="javascript:AddProject()"> 创建新建项目</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
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
                                        <td align="right">
                                            时间：
                                        </td>
                                        <td>
                                            <input id="txtStartTime" type="text" class="SmallInput" onfocus="WdatePicker({skin:'whyGreen'})" />至<input
                                                id="txtEndTime" type="text" class="SmallInput" onfocus="WdatePicker({skin:'whyGreen'})" />
                                        </td>
                                        <td align="right" style="width: 5%">
                                            状态：
                                        </td>
                                        <td>
                                            <select id="Select2" name="D2" class="SmallSelect">
                                                <option>全部</option>
                                                <option>已完结</option>
                                                <option>进行中</option>
                                            </select>
                                        </td>
                                        <td align="right">
                                            责任人：
                                        </td>
                                        <td>
                                            <input id="Text3" class="SmallInput" readonly="" type="text" />
                                            <a class="orgAdd" href="javascript:;">选择</a>
                                        </td>
                                        <td>
                                            <input id="Button2" type="button" class="btnsubmit1" value="搜索" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <div class="envthp">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="25" valign="top" style="padding-top: 2px; padding-left: 6px; padding-right: 6px;
                                                padding-bottom: 2px;">
                                                <asp:Repeater ID="dgProjectView" runat="server">
                                                    <HeaderTemplate>
                                                        <table width="100%" cellpadding="0" cellspacing="0" align="center">
                                                            <%--                   <tr class="dataTableHead" align="center">
                                                                <td style="width: 15%">
                                                                    报告类型
                                                                </td>
                                                                <td style="width: 35%">
                                                                    报告标题
                                                                </td>
                                                                <td style="width: 15%">
                                                                    提交时间
                                                                </td>
                                                                <td style="width: 15%">
                                                                    向谁汇报
                                                                </td>
                                                                <td style="width: 10%">
                                                                    创建人
                                                                </td>
                                                                 <td style="width: 10%">
                                                                    
                                                                </td>
                                                            </tr>--%>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="center">
                                                                <table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" id="project_tb"  >
                                                                    <tr>
                                                                        <td align="left" style="width:30%; ">
                                                                           <a  onclick="show('p_<%# Eval("ProjectID").ToString()  %>',this)"> <%# Eval("ProjectName") %></a>
                                                                        </td>
                                                                        <td align="left" style="width:20%">
                                                                            责任人：<%# Eval("Resperson")%>
                                                                        </td>
                                                                        <td align="right" class="project_a" style="width:50%">
                                                                            <a href="AddTask.aspx?ID="<%# Eval("ProjectID")  %>>增加新任务</a><a href="#" onclick="javascript:EditProject()">修改</a><a href="#">删除</a><a href="#">打印</a><a
                                                                                href="#">导出</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table id="p_<%# Eval("ProjectID") %>" width="100%"  border="0" cellpadding="0" cellspacing="0" style="display:none"
                                                                    align="center">
                                                                    <tr>
                                                                    <td align="left" style="width:5%">序号</td>
                                                                    <td align="left" style="width:5%">任务名称</td>
                                                                    <td align="left" style="width:5%">开始时间</td>
                                                                    <td align="left"style="width:5%">结束时间</td>
                                                                    <td align="left"style="width:10%">检视点</td>
                                                                    <td align="left" style="width:10%">方法</td>
                                                                    <td align="left" style="width:10%">关键控制点</td>
                                                                    <td align="left" style="width:10%">力度</td>
                                                                    <td align="left" style="width:5%">检视人</td>
                                                                    <td align="left"style="width:10%">当前进度</td>
                                                                    <td align="left" style="width:5%">状态</td>
                                                                    <td align="left" style="width:5%">乐捐</td>
                                                                    <td align="left" style="width:10%">操作</td>
                                                                    </tr>
                                                    <asp:Repeater ID="dgProjectDetail" runat="server" DataSource='<%#Eval("dtDetail") %>'>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="left">任务<%# Eval("RowID") %></td>
                                                                    <td align="left"><%# Eval("TaskName") %></td>
                                                                    <td align="left"><%# Eval("StartTime") %></td>
                                                                    <td align="left"><%# Eval("EndTime") %></td>
                                                                    <td align="left"><%# Eval("CheckView") %></td>
                                                                    <td align="left"><%# Eval("Method") %></td>
                                                                    <td align="left"><%# Eval("KeyControl") %></td>
                                                                    <td align="left"><%# Eval("Intensity")%></td>
                                                                    <td align="left"><%# Eval("CheckUser") %></td>
                                                                    <td align="left"><%# Eval("Progress")%></td>
                                                                    <td align="left"><%# Eval("State") %></td>
                                                                    <td align="left"><%# Eval("Donation")%></td>
                                                                    <td align="left">    <a href='EditTask.aspx?ID=<%#  Eval("TaskID")%>'>修改</a> |
                                                                <asp:LinkButton ID="LinkButton1" runat="server" BorderWidth="0" 
                                                CausesValidation="false" CommandArgument='<%# Eval("TaskID") %>' 
                                                CommandName="Delete" OnClientClick="return confirm('您确定要删除此任务吗？')">删除</asp:LinkButton></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                                </table>
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
                                            <td align="center" height="25" valign="top" style="padding-top: 2px; padding-left: 6px;
                                                padding-right: 6px; padding-bottom: 2px;">
                                                <table width="100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                 
                                                        <td align="center">
                                                            &nbsp;
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
    </div>
    <div id="projectDailog"  style="display:none">
           <table border="0" cellpadding="3" cellspacing="1" class="tableground">
            <tr>
                <td align="right">
                  项目名称： </td>
                <td align="left">
                    <input id="txtProjectName" type="text" class="BigInput"  />
                  </td>
            </tr>
            <tr>
                <td align="right">
                    责任人：
                </td>
                <td align="left">
                    <input id="txtResperson" type="text" class="BigInput" style="width:80px" />
                     <a class="orgAdd" href="javascript:;">选择</a> </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td align="left">
                    <input id="Button1" type="button" value="提交" class="btnsubmit1" /> <input id="Button3" type="button" value="取消" class="btnsubmit1" /></td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
