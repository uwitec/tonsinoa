﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TonSinOA.Model;
using TonSinOA.Utility;
using System.Globalization;

namespace TonSinOA.Ajax
{
    /// <summary>
    /// CalendarData 的摘要说明
    /// </summary>
    public class CalendarData :BaseHandler
    {
        public override void ProcessRequest(HttpContext context)
        {
            //CultureInfo.
            IList<EventInfo> events = new List< EventInfo>();

            events.Add(new EventInfo { BackgroundColor = "#9bb845", TextColor = "#000000", Id = "1",  Name = "明天中午去趟肯得鸡", Description = "", StartDate = Convert.ToDateTime("2013-01-02"), AllDayLong = true, UserID = 1, EndDate =Convert.ToDateTime("2013-01-02") });
            events.Add(new EventInfo { BackgroundColor = "red", TextColor = "#ffffff", Id = "2",  Name = "上午12点到2点开会", Description = "", StartDate = Convert.ToDateTime("2013-01-02 08:00"), AllDayLong = false, UserID = 1, EndDate = Convert.ToDateTime("2013-01-02 08:30")});
            events.Add(new EventInfo { BackgroundColor = "blue", TextColor = "#ffffff", Id = "2",  Name = "上午12点到2点开会", Description = "", StartDate = Convert.ToDateTime("2013-01-03 08:00"), AllDayLong = false, UserID = 1, EndDate = Convert.ToDateTime("2013-01-03 08:30")});
            events.Add(new EventInfo { BackgroundColor = "yellow", TextColor = "#ffffff", Id = "2", Name = "上午12点到2点开会", Description = "", StartDate =  Convert.ToDateTime("2013-01-09 12:30:00"), AllDayLong = false, UserID = 1, EndDate =  Convert.ToDateTime("2013-01-09 15:30:00") });
            IList<CalendarInfo> Calendars = new List<CalendarInfo>();
            Calendars.Add(new CalendarInfo { Events=events, BackgroundColor = "#9bb845", TextColor = "#000000",Name="我的日程", Id=1, UserID=1,Description="自已的", });
            CalendarInfo Calendar = new CalendarInfo { Events = events, BackgroundColor = "rgb(255, 180, 3)", TextColor = "rgb(203, 89, 186)", Name = "我的日程", Id = 1, UserID = 1, Description = "自已的", };
            string json = JsonHelper.SeriObject(events);
            context.Response.Write(json);
        }
      
    }
}