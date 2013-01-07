<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="TonSinOA.ProjectManager.AddProject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
 <div class="dv">
        <table class="tabs_head" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="140">
                    <h1>
                        项目管理</h1>
                </td>
                <td class="actions" width="*">
                    <table cellspacing="0" cellpadding="0" border="0" align="right">
                        <tr>
                              <td >
                               <a href="projectlist.aspx"> 项目列表</a>
                            </td>
                            <td class="active">
                                创建新建项目
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="dv">
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
