using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace TonSinOA.Model
{
   public class EventInfo
    {
        [JsonProperty("Id")]
        public string Id { get; set; }

        [JsonProperty("calendartype")]
       public string CalendarType { get; set; }

        [JsonProperty("title")]
        public string Name { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("start")]
        [JsonConverter(typeof(IsoDateTimeConverter))]
        public DateTime StartDate { get; set; }

        [JsonProperty("end")]
        [JsonConverter(typeof(IsoDateTimeConverter))]
        public DateTime EndDate { get; set; }


        [JsonProperty("allDay")]
        public bool AllDayLong { get; set; }

        [JsonIgnore]
        public string TextColor { get; set; }

        [JsonProperty( "backgroundColor")]
        public string BackgroundColor { get; set; }
       // public EventAlertType AlertType { get; set; }
       // public EventRepeatType RepeatType { get; set; }r
       /// <summary>
       /// 重复提醒次数
       /// </summary>
       [JsonProperty( "repeattimes")]
        public string RepeatTimes { get; set; }
       /// <summary>
       /// 重复提醒间隔
       /// </summary>
       [JsonProperty( "repeatinterval")]
        public string RepeatInterval { get; set; }
        [JsonProperty("userid")]
        public int UserID { get; set; }
    }
}
