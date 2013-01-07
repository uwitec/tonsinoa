<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TonSinOA.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人门户</title>
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td style="padding-left:10px;padding-right:10px">
                    <div class="oa_portlet">
                        <div class="oa_portlet_y_3">
                            <div class="oa_portlet_tr">
                            </div>
                            <div class="oa_portlet_tc">
                                <div class="titleIco mnu-note_go">
                                </div>
                                &nbsp;最新公告通知</div>
                            <div class="oa_portlet_tl">
                            </div>
                            <%--     <div class="oa_portlet_tool">
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','toggleCollapse');" class="oa_portlet_btn btn1">
                    </div>
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','moreData');" class="oa_portlet_btn btn2">
                    </div>
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','colsePortlet');" class="oa_portlet_btn btn3">
                    </div>
                </div>--%>
                        </div>
                        <div class="oa_portlet_ml">
                            <div class="oa_portlet_mr">
                                <div class="oa_portlet_mc">
                                    <div>
                                        <div>
                                            <div>
                                                <div class="bwarp">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]公文发文-WI_001814武路&nbsp;&nbsp;审批已接收&nbsp;&nbsp;2012-12-28 15:02"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000003207','wf.officework.docmanage.senddoc');"
                                                                        href="javascript:void(0);">[公文流程]公文发文-WI_001814 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-12-28 15:02
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]文件收文-WI_001704胡杰&nbsp;&nbsp;审阅已接收&nbsp;&nbsp;2012-11-22 21:32"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002980','wf.officework.filedoc.recivedoc');"
                                                                        href="javascript:void(0);">[公文流程]文件收文-WI_001704 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-22 21:32
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[项目流程]工程项目流程-WI_001536胡杰&nbsp;&nbsp;项目部已接收&nbsp;&nbsp;2012-11-14 13:27"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002893','wf_wffrom_710');"
                                                                        href="javascript:void(0);">[项目流程]工程项目流程-WI_001536 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-14 13:27
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[行政流程]公务接待申请 (表格型表单)-WI_001618武路&nbsp;&nbsp;总经理已接收&nbsp;&nbsp;2012-11-03 14:15"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002776','wf_wffrom_741');"
                                                                        href="javascript:void(0);">[行政流程]公务接待申请 (表格型表单)-WI_001618 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-03 14:15
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]文件收文-WI_001610胡杰&nbsp;&nbsp;审批已接收&nbsp;&nbsp;2012-10-30 17:39"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002746','wf.officework.filedoc.recivedoc');"
                                                                        href="javascript:void(0);">[公文流程]文件收文-WI_001610 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-10-30 17:39
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_br">
                            <div class="oa_portlet_bl">
                                <div class="oa_portlet_bc">
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td  style="padding-left:10px;padding-right:10px">
                    <div class="oa_portlet">
                        <div class="oa_portlet_b_2">
                            <div class="oa_portlet_tr">
                            </div>
                            <div class="oa_portlet_tc">
                                <div class="titleIco mnu-comment_blue">
                                </div>
                                &nbsp;最新BBS消息</div>
                            <div class="oa_portlet_tl">
                            </div>
                            <div class="oa_portlet_tool">
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','toggleCollapse');" class="oa_portlet_btn btn1">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','moreData');" class="oa_portlet_btn btn2">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','colsePortlet');" class="oa_portlet_btn btn3">
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_ml">
                            <div class="oa_portlet_mr">
                                <div id="contentext-gen133" class="oa_portlet_mc">
                                    <div id="ext-comp-1031" class=" x-panel x-panel-noborder">
                                        <div class="x-panel-bwrap" id="ext-gen172">
                                            <div class="x-panel-body x-panel-body-noheader x-panel-body-noborder" id="ext-gen173">
                                                <div class="bwarp">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="胡杰&nbsp;&nbsp;回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认&nbsp;&nbsp;2013-01-03 16:44"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2852');" href="javascript:void(0);">
                                                                        [胡杰]回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2013-01-03 16:44
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回执：回复: cccxcvxv&nbsp;&nbsp;2012-12-06 19:55" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2819');"
                                                                        href="javascript:void(0);">[武路]回执：回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-06 19:55
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回复: cccxcvxv&nbsp;&nbsp;2012-12-05 11:15" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2818');"
                                                                        href="javascript:void(0);">[武路]回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-05 11:15
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="符晓蓉&nbsp;&nbsp;回执：转发: 回复: 季度奖金发放&nbsp;&nbsp;2012-12-04 17:00" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2812');"
                                                                        href="javascript:void(0);">[符晓蓉]回执：转发: 回复: 季度奖金发放 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-04 17:00
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="夏雨&nbsp;&nbsp;回执：回复: 回复: 111111111&nbsp;&nbsp;2012-11-21 15:19" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2787');"
                                                                        href="javascript:void(0);">[夏雨]回执：回复: 回复: 111111111 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-11-21 15:19
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_br">
                            <div class="oa_portlet_bl">
                                <div class="oa_portlet_bc">
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
             <tr>
                <td style="padding-left:10px;padding-right:10px;padding-top:10px">
                    <div class="oa_portlet">
                        <div class="oa_portlet_y_3">
                            <div class="oa_portlet_tr">
                            </div>
                            <div class="oa_portlet_tc">
                                <div class="titleIco mnu-note_go">
                                </div>
                                &nbsp;最近工作日历</div>
                            <div class="oa_portlet_tl">
                            </div>
                            <%--     <div class="oa_portlet_tool">
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','toggleCollapse');" class="oa_portlet_btn btn1">
                    </div>
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','moreData');" class="oa_portlet_btn btn2">
                    </div>
                    <div onclick="Ext.parf.reflect.ExtCmp('ext-gen128','colsePortlet');" class="oa_portlet_btn btn3">
                    </div>
                </div>--%>
                        </div>
                        <div class="oa_portlet_ml">
                            <div class="oa_portlet_mr">
                                <div class="oa_portlet_mc">
                                    <div>
                                        <div>
                                            <div>
                                                <div class="bwarp">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]公文发文-WI_001814武路&nbsp;&nbsp;审批已接收&nbsp;&nbsp;2012-12-28 15:02"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000003207','wf.officework.docmanage.senddoc');"
                                                                        href="javascript:void(0);">[公文流程]公文发文-WI_001814 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-12-28 15:02
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]文件收文-WI_001704胡杰&nbsp;&nbsp;审阅已接收&nbsp;&nbsp;2012-11-22 21:32"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002980','wf.officework.filedoc.recivedoc');"
                                                                        href="javascript:void(0);">[公文流程]文件收文-WI_001704 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-22 21:32
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[项目流程]工程项目流程-WI_001536胡杰&nbsp;&nbsp;项目部已接收&nbsp;&nbsp;2012-11-14 13:27"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002893','wf_wffrom_710');"
                                                                        href="javascript:void(0);">[项目流程]工程项目流程-WI_001536 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-14 13:27
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[行政流程]公务接待申请 (表格型表单)-WI_001618武路&nbsp;&nbsp;总经理已接收&nbsp;&nbsp;2012-11-03 14:15"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002776','wf_wffrom_741');"
                                                                        href="javascript:void(0);">[行政流程]公务接待申请 (表格型表单)-WI_001618 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-11-03 14:15
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <div class="ico">
                                                                    </div>
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="[公文流程]文件收文-WI_001610胡杰&nbsp;&nbsp;审批已接收&nbsp;&nbsp;2012-10-30 17:39"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen128','openDetail','WF_000002746','wf.officework.filedoc.recivedoc');"
                                                                        href="javascript:void(0);">[公文流程]文件收文-WI_001610 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    2012-10-30 17:39
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_br">
                            <div class="oa_portlet_bl">
                                <div class="oa_portlet_bc">
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td  style="padding-left:10px;padding-right:10px; padding-top:10px">
                    <div class="oa_portlet">
                        <div class="oa_portlet_b_2">
                            <div class="oa_portlet_tr">
                            </div>
                            <div class="oa_portlet_tc">
                                <div class="titleIco mnu-comment_blue">
                                </div>
                                &nbsp;最新报告总结</div>
                            <div class="oa_portlet_tl">
                            </div>
                            <div class="oa_portlet_tool">
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','toggleCollapse');" class="oa_portlet_btn btn1">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','moreData');" class="oa_portlet_btn btn2">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','colsePortlet');" class="oa_portlet_btn btn3">
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_ml">
                            <div class="oa_portlet_mr">
                                <div id="Div1" class="oa_portlet_mc">
                                    <div id="Div2" class=" x-panel x-panel-noborder">
                                        <div class="x-panel-bwrap" id="Div3">
                                            <div class="x-panel-body x-panel-body-noheader x-panel-body-noborder" id="Div4">
                                                <div class="bwarp">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="胡杰&nbsp;&nbsp;回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认&nbsp;&nbsp;2013-01-03 16:44"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2852');" href="javascript:void(0);">
                                                                        [胡杰]回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2013-01-03 16:44
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回执：回复: cccxcvxv&nbsp;&nbsp;2012-12-06 19:55" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2819');"
                                                                        href="javascript:void(0);">[武路]回执：回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-06 19:55
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回复: cccxcvxv&nbsp;&nbsp;2012-12-05 11:15" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2818');"
                                                                        href="javascript:void(0);">[武路]回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-05 11:15
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="符晓蓉&nbsp;&nbsp;回执：转发: 回复: 季度奖金发放&nbsp;&nbsp;2012-12-04 17:00" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2812');"
                                                                        href="javascript:void(0);">[符晓蓉]回执：转发: 回复: 季度奖金发放 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-04 17:00
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="夏雨&nbsp;&nbsp;回执：回复: 回复: 111111111&nbsp;&nbsp;2012-11-21 15:19" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2787');"
                                                                        href="javascript:void(0);">[夏雨]回执：回复: 回复: 111111111 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-11-21 15:19
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_br">
                            <div class="oa_portlet_bl">
                                <div class="oa_portlet_bc">
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
            <td colspan="2"  style="padding-left:10px;padding-right:10px; padding-top:10px">
                    <div class="oa_portlet">
                        <div class="oa_portlet_b_2">
                            <div class="oa_portlet_tr">
                            </div>
                            <div class="oa_portlet_tc">
                                <div class="titleIco mnu-comment_blue">
                                </div>
                                &nbsp;最新文档</div>
                            <div class="oa_portlet_tl">
                            </div>
                            <div class="oa_portlet_tool">
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','toggleCollapse');" class="oa_portlet_btn btn1">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','moreData');" class="oa_portlet_btn btn2">
                                </div>
                                <div onclick="Ext.parf.reflect.ExtCmp('ext-gen133','colsePortlet');" class="oa_portlet_btn btn3">
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_ml">
                            <div class="oa_portlet_mr">
                                <div id="Div5" class="oa_portlet_mc">
                                    <div id="Div6" class=" x-panel x-panel-noborder">
                                        <div class="x-panel-bwrap" id="Div7">
                                            <div class="x-panel-body x-panel-body-noheader x-panel-body-noborder" id="Div8">
                                                <div class="bwarp">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="胡杰&nbsp;&nbsp;回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认&nbsp;&nbsp;2013-01-03 16:44"
                                                                        onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2852');" href="javascript:void(0);">
                                                                        [胡杰]回执：回复: 《公司全体部门绩效考核表》（征求稿）内容确认 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2013-01-03 16:44
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回执：回复: cccxcvxv&nbsp;&nbsp;2012-12-06 19:55" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2819');"
                                                                        href="javascript:void(0);">[武路]回执：回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-06 19:55
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="武路&nbsp;&nbsp;回复: cccxcvxv&nbsp;&nbsp;2012-12-05 11:15" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2818');"
                                                                        href="javascript:void(0);">[武路]回复: cccxcvxv </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-05 11:15
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="符晓蓉&nbsp;&nbsp;回执：转发: 回复: 季度奖金发放&nbsp;&nbsp;2012-12-04 17:00" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2812');"
                                                                        href="javascript:void(0);">[符晓蓉]回执：转发: 回复: 季度奖金发放 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-12-04 17:00
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16">
                                                                    <img width="16" height="16" ext:qtip="已读" src="/images/communication/feedback_isread_1.png">
                                                                </td>
                                                                <td class="over">
                                                                    <a ext:qtip="夏雨&nbsp;&nbsp;回执：回复: 回复: 111111111&nbsp;&nbsp;2012-11-21 15:19" onclick="Ext.parf.reflect.ExtCmp('ext-gen133','openDetail','2787');"
                                                                        href="javascript:void(0);">[夏雨]回执：回复: 回复: 111111111 </a>
                                                                </td>
                                                                <td width="120" align="right">
                                                                    &nbsp;&nbsp;2012-11-21 15:19
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="line" colspan="3">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oa_portlet_br">
                            <div class="oa_portlet_bl">
                                <div class="oa_portlet_bc">
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
