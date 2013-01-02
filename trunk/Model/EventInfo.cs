using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Jayrock.Json.Conversion;
namespace TonSinOA.Model
{
   public class EventInfo
    {
        [JsonDataMember(Name = "objectId")]
        public string Id { get; set; }

        [JsonDataMember(Name = "sourceId")]
        public string CalendarId { get; set; }

        [JsonDataMember(Name = "title")]
        public string Name { get; set; }

        [JsonDataMember(Name = "description")]
        public string Description { get; set; }

        [JsonDataMember(Name = "start")]
        public string StartDate { get; set; }

        [JsonDataMember(Name = "end")]
        public string EndDate { get; set; }

      
        [JsonDataMember(Name = "allDay")]
        public string AllDayLong { get; set; }

        [JsonDataMember(Name = "textColor")]
        public string TextColor { get; set; }

        [JsonDataMember(Name = "backgroundColor")]
        public string BackgroundColor { get; set; }
       // public EventAlertType AlertType { get; set; }
       // public EventRepeatType RepeatType { get; set; }
        public int UserID { get; set; }
    }
}
