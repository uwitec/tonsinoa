<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSubArea.aspx.cs" Inherits="TonSinOA.Bbs.SubArea.AddSubArea" %>

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
        <tr valign="top">
            <td valign="top">
               <table border="0" cellpadding="4" cellspacing="1" class="tableground">
                                
                               <tr>
                <td align="left">
                   <img  src="../../images/notify_new.gif" alt=""/>
<span class="big3"> 新建分区论坛</span>
                    </td>
                <td  align="right"> <a href="ListSubArea.aspx"><span>返回</span></a></td>
            </tr>
                                <tr >
                                    <td >
                                        名称：
                                    </td>
                                    <td align="left">
                                         <asp:TextBox ID="TextBox1" runat="server" CssClass="BigInput" Width="300px"></asp:TextBox>
                                    </td>
                                </tr>
                               <%-- <tr >
                                    <td >
                                        类别：
                                    </td>
                                    <td  align="left">
                                        <asp:DropDownList ID="drpGrouplist" runat="server"  CssClass="BigSelect">
                                        </asp:DropDownList>
                                    </td>
                                </tr>--%>
                                <tr >
                                    <td >
                                        类别：</td>
                                    <td align="left">
                                        <asp:DropDownList ID="DropDownList1" CssClass="BigSelect" runat="server">
                                            <asp:ListItem Text="全部" Value="0" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Net技术" Value="1" ></asp:ListItem>
                                                <asp:ListItem Text="Java技术" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="移动平台" Value="3"></asp:ListItem>
                                            </asp:DropDownList></td>
                                </tr>
                                <tr >
                                    <td >
                                        创建人：</td>
                                    <td align="left">
                                         jimlly</td>
                                </tr>
                                <tr >
                                    <td >
                                        创建时间：
                                    </td>
                                    <td  align="left">
                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="BigInput" ></asp:TextBox>
                                    </td>
                                </tr>
                             
                              
                    <tr style="background-color: #f2f8ff">
                        <td >
                            描述：
                        </td>
                        <td align="left">
                           <textarea id="txtContent" cols="20" rows="10" style="width:100%" runat="server"></textarea>
                        </td>
                    </tr>
           
                    <tr style="background-color: #f2f8ff">
                        <td style="width: 106px">
                        </td>
                        <td align="center" valign="middle" style="white-space: nowrap">
                            <asp:Button ID="btnSumit" runat="server" Text="保存"  CssClass="btnsubmit1"/>
                            &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="btnCanel" runat="server" Text="取消" CssClass="btnsubmit1"
                                OnClientClick="history.go(-1);return false;" />
                        </td>
                    </tr>
                </table> </td>
        </tr>
        <tr valign="bottom">
            <td align="center" valign="bottom">
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
