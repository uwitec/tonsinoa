<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileContent.aspx.cs" Inherits="TonSinOA.FileManager.FileContent1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="../js/flexpaper_flash_debug.js" type="text/javascript"></script>
    <script type="text/javascript">

        var MyDialog;


        function SubNewVersion() {
        
           // var throughBox = art.dialog.through
            MyDialog = art.dialog.through({
                title: "提交新版本",
                lock: true,
                opacity:0.1
            });
            MyDialog.content(document.getElementById("tbNewVersion"));
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
        <table border="0" cellpadding="3" cellspacing="1" style="width: 100%" class="tableground">
            <tr>
                <td style="height: 10px" align="left">
                    <a href="FileList.aspx?ID=1">返回</a>
                </td>
                <td style="height: 10px" align="left">
                    <span class="big1">图书管</span>
                    <%-- <asp:DataList ID="dataListMapPath" runat="server" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnMapTo" runat="server" CommandArgument='<%# Eval("CommandArgument") %>'
                                CommandName="MapTo" Text='<%# Eval("LinkText")  %>'></asp:LinkButton>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <asp:Label ID="Label1" runat="server" Text=">"></asp:Label>
                        </SeparatorTemplate>
                    </asp:DataList>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 150px" align="center" valign="top">
                    <div class="dv">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left">
                                    <a class="ToolBtn" title="提交新版本"><span onclick="SubNewVersion()";>提交新版本</span></a>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    历史版本
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <div>
                                        V2.0戴维2012-12-08定稿</div>
                                    <div>
                                        V1.2张三2012-12-05修改</div>
                                    <div>
                                        V1.1高明二2012-12-03修改</div>
                                    <div>
                                        V1.0高明二2012-12-02创建</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                    <div class="dv">
                        <asp:Repeater ID="dgDocView" runat="server">
                            <ItemTemplate>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <td align="left" class="big">
                                            <%# Eval("FileName") %>
                                        </td>
                                        <td align="left">
                                            锁定 &nbsp;| &nbsp;权限 &nbsp;| &nbsp;另存为 &nbsp;| &nbsp;删除
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            文件版本：<%# Eval("Vesion")%>,<%# Eval("CreatUser")%>负责，10kb
                                        </td>
                                        <td align="left">
                                            <a href='<%# Eval("FileName") %>'>下载</a>
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2">
                                            <div id="docView">
                                                <a id="viewerPlaceHolder" style="width: 100%; height: 480px; display: block"></a>
                                                <script type="text/javascript">

                                                    var fp = new FlexPaperViewer(
						 '../js/FlexPaperViewer',
						 'viewerPlaceHolder', { config: {
						     SwfFile: escape('1_5.swf'),
						     Scale: 1,
						     ZoomTransition: 'easeOut',
						     ZoomTime: 0.5,
						     ZoomInterval: 0.2,
						     FitPageOnLoad: true,
						     FitWidthOnLoad: false,
						     PrintEnabled: true,
						     FullScreenAsMaxWindow: false,
						     ProgressiveLoading: false,
						     MinZoomSize: 0.2,
						     MaxZoomSize: 5,
						     SearchMatchAll: false,
						     InitViewMode: 'Portrait',

						     ViewModeToolsVisible: true,
						     ZoomToolsVisible: true,
						     NavToolsVisible: true,
						     CursorToolsVisible: true,
						     SearchToolsVisible: true,

						     localeChain: 'en_US'
						 }
			});
                         
	        </script>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 150px" align="center" valign="top">
                    &nbsp;
                </td>
                <td>
                    <div class="dv">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td align="left" colspan="2">
                                    有1条讨论
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    2012-12-05 10:56 高明二说...
                                </td>
                                <td align="right">
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    这个报告写的确实不错！
                                </td>
                                <td align="right">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    李二说...
                                </td>
                                <td align="right">
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <textarea id="TextArea1" cols="50" name="S1" rows="5"></textarea>
                                </td>
                                <td align="right">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <input id="Button1" type="button" class="btnsubmit1" value="发表" />
                                </td>
                                <td align="right">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <table id="tbNewVersion" style="display: block" border="0" cellpadding="3" cellspacing="1"
        class="tableground">
        <tr>
            <td align="right">
                上传文件：
            </td>
            <td align="left">
                <input id="file" type="file" class="BigInput" />
            </td>
        </tr>
        <tr>
            <td align="right">
                版本号：
            </td>
            <td align="left">
                1.2
            </td>
        </tr>
        <tr>
            <td align="right">
                版本说明：
            </td>
            <td align="left">
                <input id="Text1" style="width: 250px" type="text" class="BigInput" />
            </td>
        </tr>
        <tr>
            <td align="right">
                同时通知其他人：
            </td>
            <td align="left">
                <textarea id="TextArea2" class="BigStatic" readonly="" wrap="yes" rows="2" name="S1"
                    cols="45"></textarea>
                <a class="orgAdd" href="javascript:;">添加</a> <a class="orgClear" href="javascript:;">
                    清空</a>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;
            </td>
            <td align="left">
                <input id="Checkbox1" type="checkbox" />将此文件定版
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;
            </td>
            <td align="left">
                <input id="Button2" type="button" value="保存新版本" class="btnsubmit1" />
                &nbsp; &nbsp;
                <input id="Button3" type="button" value="取消" class="btnsubmit1"  />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
