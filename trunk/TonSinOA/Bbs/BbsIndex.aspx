<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BbsIndex.aspx.cs" Inherits="TonSinOA.Bbs.BbsIndex" %>

<%@ Register src="../UserControl/BbsTopControl.ascx" tagname="BbsTopControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="white-space: nowrap" align="center" valign="middle">
                   
                    <uc1:BbsTopControl ID="BbsTopControl1" runat="server" />
                   
                </td>
            </tr>

            <tr valign="top">
                <td valign="top">
                       <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr valign="top">
            <td align="left" >
            <div style="margin-left:10px">
                <img src="../images/bbs/Forum_nav.gif" /><a href="BbsIndex.aspx">论坛首页
                    </a> </div></td>
        </tr>
        <tr>
            <td align="left">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 98%; margin-left:10px; margin-right:10px">
                    <tr>
                        <td valign="middle">
                            <asp:GridView ID="dgGroupView" runat="server" AutoGenerateColumns="False" Height="143px"
                                Width="100%" CellPadding="0" ShowHeader="False" BorderStyle="None" CellSpacing="5"
                                BorderWidth="0px">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table border="0" cellspacing="1" cellpadding="3"  style="width: 99.8%; height: 20px;
                                                 background-color: #0099cc;margin:2px 2px 2px 2px">
                                                 <tr style="background-color: #99ccff">
                                                    <td style="height: 24px;" colspan="4">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bbs/nofollow.gif" /><a href="ListBoard.aspx?Action=<%# Eval("GroupID") %>"><%# Eval("GroupName") %></a></td>
                                                </tr>
                                                <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Eval("AreaTable") %>'>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td style="background-color: #ffffff; width:10%">
                                                                <img src="../Images/bbs/forum_isnews.gif" /></td>
                                                            <td style="background-color: #f2f8ff">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%;">
                                                                    <tr>
                                                                        <%--<td align="Left" valign="middle" style="width: 15%">
                                                                            <img src="<%#Eval("Area_ImageURL") %>" />
                                                                        </td>--%>
                                                                        <td align="left" colspan="2" valign="middle" style="width: 40%">
                                                                            <a href='BListItem.aspx?Action=<%# Eval("AreaID") %>'>『<%#  Eval("AreaName") %>』</a>
                                                                        </td>
                                                                        <td>
                                                                            <p>
                                                                                主题：<%# Eval("AreaName" )%><br>
                                                                                版主：<%#  Eval("CreatUser")%><br />日期：<%#  Eval("CreatTime")%></p>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="3" height="20" bgcolor="#DFFDFF">
                                                                            <table cellspacing="0" bgcolor="#ccffff" cellpadding="0" width="100%" height="100%"
                                                                                align="center" border="0">
                                                                                <tr>
                                                                                    <td align="left">
                                                                                    </td>
                                                                                    <td width="35%">
                                                                                        今日帖：<%#  Eval("TodaySum")%>&nbsp; 总帖数：<%#  Eval("CommitSum")%></td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
                </td>
            </tr>
            <tr valign="bottom">
                <td align="center" valign="bottom">
                   
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
