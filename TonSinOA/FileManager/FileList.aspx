<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileList.aspx.cs" Inherits="TonSinOA.FileManager.FileList" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr valign="top">
            <td style="white-space: nowrap" valign="top" align="left">
                 <asp:DataList ID="dataListMapPath" runat="server" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnMapTo" runat="server" CommandArgument='<%# Eval("CommandArgument") %>'
                                        CommandName="MapTo" Text='<%# Eval("LinkText")  %>'></asp:LinkButton>
                                </ItemTemplate>
                                  <SeparatorTemplate>
                                    <asp:Label ID="Label1" runat="server" Text=">"></asp:Label>
                                </SeparatorTemplate>
                                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td style="white-space: nowrap" valign="middle" align="left">               
              <span class="big2" id="spTypeName" runat="server">文档库</span>
                   
            </td>
        </tr>
        <tr>
            <td align="center">
                <table border="0" cellpadding="3" cellspacing="1"  class="tableground">
                    <tr style="background-color:#f0f0ee">
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">类型
                        </td>
                    <%--    <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                           所属分类
                        </td>--%>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            名称

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            版本
                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            状态

                        </td>
                 <%--       <td style="height: 22px; white-space: nowrap;" align="center">
                            附件
                        </td>--%>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            发布者

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            最后修改者

                        </td>
                        <td style="height: 22px; white-space: nowrap;background-color:#f0f0ee" align="center">
                            最后修改时间
                        </td>
                    </tr>
                    <asp:Repeater ID="dgDocView" runat="server" >
                        <ItemTemplate>
                            <tr style="background-color: White" valign="top">
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                  
                                    <img style="width:32px; height:32px" src="<%# TonSinOA.Global.GetFileTypeImg(Convert.ToString(Eval("FileExt")), Convert.ToInt32(Eval("TypeID"))) %>" />
                                </td>
                          <%--      <td style="height: 25px; white-space: nowrap;" align="center">
                                   
                                        <%#  Eval("Subject") %>
                                </td>--%>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <%# Eval("FileName") %>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                     <%# Eval("Vesion") %>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                     <%# Eval("State") %>
                                </td>
                             <%--   <td style="height: 25px; white-space: nowrap;" align="center">
                                   
                                </td>--%>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                    <%# Eval("CreatUser") %>
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                   
                                        <%#  Eval("ModfityUser")%>
                                    
                                </td>
                                <td style="height: 25px; white-space: nowrap;" align="center">
                                  <%#  Eval("ModfityTime")%>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr align="right" style="background-color: #f2f8ff" valign="top">
                        <td style="white-space: nowrap" colspan="8">
                     <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonCount="20" 
                                                                PageSize="20" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                                                ShowPageIndex="False" AlwaysShow="True" ShowInputBox="Auto">
                                                            </webdiyer:AspNetPager>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
