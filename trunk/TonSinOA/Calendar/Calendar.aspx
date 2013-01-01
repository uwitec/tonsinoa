<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="TonSinOA.Calendar.Calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../js/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="../js/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" />
    <link href="../js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/fullcalendar/fullcalendar.js" type="text/javascript"></script>
    <script src="../js/DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="../js/Attach.js" type="text/javascript"></script>
    <script src="../js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="../js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();
            $("#calendar").fullCalendar({
                header: false,
                //                header: {
                //                    left: 'ddd',
                //                    //                    center: 'month,basicWeek,basicDay,agendaWeek,agendaDay',
                //                    //                    right: 'prevYear prev today next nextYear'
                //                    center: 'prev,title,next',
                //                    right: 'agendaDay,agendaWeek,month'

                //                },
                //                buttonText: {
                //                    month: '月视图',
                //                    basicWeek: '周视图',
                //                    basicDay: '日视图',
                //                    agendaWeek: '周视图',
                //                    agendaDay: '日视图',
                //                    today: '今天'
                //                },
                defaultView: 'agendaDay',
                aspectRatio: 2,
                weekMode: 'variable', //每周固定，月份高度不固定。fixed固定六周,liquid月份高度固定，每周高度不固定。
                theme: false,
                editable: false, //允许编辑
                titleFormat: {
                    month: 'yyyy年MM月',
                    week: "yyyy年MM月dd日{'-'[yyyy年][MM月]dd日}",
                    day: 'yyyy年MM月dd日 dddd'
                },
                //                buttonIcons: {

                //            },
                firstDay: 0, //作用周视图，默认周几开始，0星期天，1星期一。。。。默认为0
                weekMode: 'variable', //默认fixed总是显示6周的格子。liquid，variable根据月份显示4，5，6周其中一个，liquid的总体高度固定。variable格子高度固定。
                height: 550, //注意不加单位，包括header和主体部分的高度。
                //timeFormat:'HH:mm',全部视图使用这个时间样式
                timeFormat: {
                    week: 'HH:mm{-HH:mm}',
                    day: 'HH:mm'
                },
                columnFormat: {//header底下的第一行;
                    month: 'dddd',
                    week: 'dddd dd',
                    day: 'dddd, yyyy年MM月d日 '
                },
                allDayText: '全天', //allDay全天事件的文本
                axisFormat: 'HH:mm', //agenda时间轴的格式
                allDaySlot: true, //是否显示全天，默认为true
                monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                monthNamesShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
                dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
                dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
                firstHour: 0, //默认是6，只对agenda视图有效果
                defaultEventMinutes: 120, //如果事件没有结束时间，默认120分钟长度 
                //日程点击：添加日程
                dayClick: function (date, allDay, jsEvent, view) {
                    art.dialog.open('newschedule.html', {
                        title: '添加日程',
                        lock: true,
                        width: 500,
                        height: 400,
                        fixed: true, //固定定位
                        //background: '#600', // 背景色
                        opacity: 0.1 // 透明度
                    });
                },
                viewDisplay: function (view) {
                    //console.debug(view.start + "          " + view.end);

                },
                eventSources: [{ "Id": 1, "title": "我的日程", "description": "自已的", "textColor": "rgb(203, 89, 186)", "backgroundColor": "rgb(255, 180, 3)", "UserID": 1, "events": [{ "objectId": "1", "sourceId": " 1", "title": "明天中午去趟肯得鸡", "description": "", "start": "1357084800", "end": "1357084800", "allDay": true, "UserID": 1 }, { "objectId": "2", "sourceId": " 1", "title": "上午12点到2点开会", "description": "", "start": "1357214400", "end": "1357221600", "UserID": 1}]}],
                // events: "../Ajax/CalendarData.ashx",
                eventClick: function (calEvent, jsEvent, view) {
                    console.debug(calEvent);
                    art.dialog.open('newschedule.html', {
                        title: '更新日程',
                        lock: true,
                        width: 500,
                        height: 400,
                        fixed: true, //固定定位
                        //background: '#600', // 背景色
                        opacity: 0.1 // 透明度
                    });
                }

            });

            SetHeaderTitle();
            $('#spToday').click(function () {
                //$('#calendar').fullCalendar('today');
                $('#calendar').fullCalendar('gotoDate', new Date());
                SetHeaderTitle();
                //$('#calendar').fullCalendar('incrementDate', 1);
            });
            //            $('#Button1').click(function () {
            //                var obj = $("#calendar").fullCalendar('getView')
            //                if (obj.name == 'month') {
            //                    $("#calendar").fullCalendar('getView')
            //                }
            //                else if (obj.name == 'agendaWeek') {
            //                }
            //                else if (obj.name == 'agendaDay') {
            //                }
            //                $('#calendar').fullCalendar('prev');

            //                //                $('#calendar').fullCalendar('today');
            //                // $('#calendar').fullCalendar('gotoDate', '2013 01-12');
            //                //$('#calendar').fullCalendar('incrementDate', 1);
            //            });
            //            $('#Button2').click(function () {
            //                var obj = $("#calendar").fullCalendar('getView')
            //                if (obj.name == 'month') {
            //                    $("#calendar").fullCalendar('getView')
            //                }
            //                else if (obj.name == 'agendaWeek') {
            //                }
            //                else if (obj.name == 'agendaDay') {
            //                }
            //                $('#calendar').fullCalendar('next');

            //                //                $('#calendar').fullCalendar('today');
            //                // $('#calendar').fullCalendar('gotoDate', '2013 01-12');
            //                //$('#calendar').fullCalendar('incrementDate', 1);
            //            });
            LoadLeftDate();
        });
        function setView(viewName) {
            if (viewName == 'list') {
                $('#calendar').hide();
            } else {
                $("#calendar").fullCalendar('changeView', viewName);
                SetHeaderTitle();
            }
        }
        function LoadLeftDate() {
            WdatePicker({ eCont: 'dataPicker', skin: 'default', onpicked: function (dp) { setDate(dp.cal.getDateStr()) } })
        }
        function setDate(s) {
            // console.debug(s);
            var obj = $("#calendar").fullCalendar('getView')
            if (obj.name != 'agendaDay') {
                setView('agendaDay');
            }
            var d = new Date(Date.parse(s.replace(/-/g, "/")))
            //console.debug(d);
            $('#calendar').fullCalendar('gotoDate', $.fullCalendar.parseDate(s));
            SetHeaderTitle();
        }
        function SetHeaderTitle() {
            $("#HeaderTitle").text($("#calendar").fullCalendar('getView').title);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%" >
            <tr>
                <td colspan="2" align="center" valign="middle">
                    <div class="PageHeader calendar_icon">
                        <div class="header-left">
                            <input type="hidden" name="BTN_OP" value="" />
                            <input type="hidden" name="OVER_STATUS" value="" />
                            <a class="ToolBtn ToolBtn-active"><span id="spToday" title="转到今天">今天</span></a>
                            <%--<!-------------- 年 ------------>
                            <a title="上一年" class="ArrowButtonL" href="javascript:set_year(-1);"></a>
                            <select onchange="My_Submit();" class="SmallSelect" name="YEAR">
                                <option value="2000">2000年</option>
                                <option value="2001">2001年</option>
                                <option value="2002">2002年</option>
                                <option value="2003">2003年</option>
                                <option value="2004">2004年</option>
                                <option value="2005">2005年</option>
                                <option value="2006">2006年</option>
                                <option value="2007">2007年</option>
                                <option value="2008">2008年</option>
                                <option value="2009">2009年</option>
                                <option value="2010">2010年</option>
                                <option value="2011">2011年</option>
                                <option value="2012">2012年</option>
                                <option selected="" value="2013">2013年</option>
                                <option value="2014">2014年</option>
                                <option value="2015">2015年</option>
                                <option value="2016">2016年</option>
                                <option value="2017">2017年</option>
                                <option value="2018">2018年</option>
                                <option value="2019">2019年</option>
                                <option value="2020">2020年</option>
                                <option value="2021">2021年</option>
                                <option value="2022">2022年</option>
                                <option value="2023">2023年</option>
                                <option value="2024">2024年</option>
                                <option value="2025">2025年</option>
                                <option value="2026">2026年</option>
                                <option value="2027">2027年</option>
                                <option value="2028">2028年</option>
                                <option value="2029">2029年</option>
                                <option value="2030">2030年</option>
                            </select><a title="下一年" class="ArrowButtonR" href="javascript:set_year(1);"></a>
                            <!-------------- 月 ------------>
                            <a title="上一月" class="ArrowButtonL" href="javascript:set_mon(-1);"></a>
                            <select onchange="My_Submit();" class="SmallSelect" name="MONTH">
                                <option selected="" value="01">01月</option>
                                <option value="02">02月</option>
                                <option value="03">03月</option>
                                <option value="04">04月</option>
                                <option value="05">05月</option>
                                <option value="06">06月</option>
                                <option value="07">07月</option>
                                <option value="08">08月</option>
                                <option value="09">09月</option>
                                <option value="10">10月</option>
                                <option value="11">11月</option>
                                <option value="12">12月</option>
                            </select><a title="下一月" class="ArrowButtonR" href="javascript:set_mon(1);"></a>
                            <!-------------- 日 ------------>
                            <a title="上一天" class="ArrowButtonL" href="javascript:set_day(-1);"></a>
                            <select onchange="My_Submit();" class="SmallSelect" name="DAY">
                                <option selected="" value="01">01日</option>
                                <option value="02">02日</option>
                                <option value="03">03日</option>
                                <option value="04">04日</option>
                                <option value="05">05日</option>
                                <option value="06">06日</option>
                                <option value="07">07日</option>
                                <option value="08">08日</option>
                                <option value="09">09日</option>
                                <option value="10">10日</option>
                                <option value="11">11日</option>
                                <option value="12">12日</option>
                                <option value="13">13日</option>
                                <option value="14">14日</option>
                                <option value="15">15日</option>
                                <option value="16">16日</option>
                                <option value="17">17日</option>
                                <option value="18">18日</option>
                                <option value="19">19日</option>
                                <option value="20">20日</option>
                                <option value="21">21日</option>
                                <option value="22">22日</option>
                                <option value="23">23日</option>
                                <option value="24">24日</option>
                                <option value="25">25日</option>
                                <option value="26">26日</option>
                                <option value="27">27日</option>
                                <option value="28">28日</option>
                                <option value="29">29日</option>
                                <option value="30">30日</option>
                                <option value="31">31日</option>
                            </select><a title="下一天" class="ArrowButtonR" href="javascript:set_day(1);"></a>--%>
                        </div>
                        <div class="header-center">
                            <%--<input id="Button1" type="button" value="上" />
                            <input id="Button2" type="button" value="下" />--%>
                            <a class="prve-w"></a>
                            <span id="HeaderTitle"></span>
                            <a class="next-e"></a>
                           <%-- <div class="fc-header-center">
                                <span class="fc-button fc-button-prev fc-state-default fc-corner-left fc-corner-right">
                                    <span class="fc-button-inner"><span class="fc-button-content"><span class="triangle-w">
                                        &nbsp;</span></span></span></span><span class="fc-header-title day"><span class="title-text"><span
                                            class="h2">二, 2013年1月1日</span></span></span><span class="fc-button fc-button-next fc-state-default fc-corner-left fc-corner-right"><span
                                                class="fc-button-inner"><span class="fc-button-content"><span class="triangle-e">&nbsp;</span></span></span></span></div>--%>
                        </div>
                        <div class="header-right">
                            <%-- <a class="ToolBtn" href="query.php"><span>查询</span></a>--%>
                            <a onclick="showMenu(this.id,'1');" class="dropdown" href="javascript:;" id="new"><span>
                                新建</span></a>
                            <div class="attach_div" id="new_menu">
                                <a title="建立日程" href="javascript:new_cal(1356969600,'+1 days');">日程</a>
                            </div>
                            <a title="列表视图" class="calendar-view list-view" href="javascript:setView('list');">
                            </a><a title="日视图" class="calendar-view day-view" href="javascript:setView('agendaDay');">
                            </a><a title="周视图" class="calendar-view week-view" href="javascript:setView('agendaWeek');">
                            </a><a title="月视图" class="calendar-view month-view" href="javascript:setView('month');">
                            </a>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="center" valign="top">
                    <div id="dataPicker">
                    </div>
                    <script type="text/javascript">
                    
                    </script>
                </td>
                <td>
                    <div id='calendar' style="margin-left:5px">
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
