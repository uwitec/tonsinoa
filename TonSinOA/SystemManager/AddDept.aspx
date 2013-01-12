<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDept.aspx.cs" Inherits="TonSinOA.SystemManager.AddDept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%=Resources.lang.AddDep %></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"> </script>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script src="../js/lang.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {

            $("#btnSave").click(function () {
                if ($("#txtDepName").val() == "") {
                    alert(lang.module.system.depart.msg1);
                    return false;
                }
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="dv" style="text-align: center">
                    <table border="0" cellpadding="3" cellspacing="1" style="width: 100%; background-color: #d6eef1">
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White">
                               <%=Resources.lang.DepName %>：
                               <%--部门名称：--%>

                            </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:TextBox ID="txtDepName" CssClass="BigInput" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                               
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White;">
                                <%=Resources.lang.ParentDep %>：
                                <%--上级部门：--%>
                                </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:TextBox ID="txtParent" runat="server" Width="115px"></asp:TextBox>
                                <input id="hidparentID" runat="server" type="hidden" value="" />
                                <input id="Button1" runat="server" type="button" value="<%$Resources:lang,Choice %>" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="white-space: nowrap; background-color: White; ">
                                <%=Resources.lang.DepRemark %>：
                               <%-- 部门描述：--%>
                                </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <textarea id="txtRemark" class="BigInput" name="S1" runat="server" rows="10" cols="50"></textarea></td>
                        </tr>
                        <tr>
                            <td style="white-space: nowrap; background-color: White; ">
                               
                            </td>
                            <td align="left" style="white-space: nowrap; background-color: White; ">
                                <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:lang,Save %>" 
                                    CssClass="btnsubmit1" onclick="btnSave_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClose" runat="server" Text="<%$ Resources:lang,Close %>" CssClass="btnsubmit1" OnClientClick="art.dialog.close();return false;" />
                            </td>
                        </tr>
                    </table>
                </div>
    </form>
</body>
</html>
