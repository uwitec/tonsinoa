using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Jayrock.Json.Conversion;
namespace TonSinOA.Model
{
    public class CalendarInfo
    {
        public  int Id { get; set; }

        [JsonDataMember(Name = "title")]
        public  string Name { get; set; }

        [JsonDataMember(Name = "description")]
        public string Description { get; set; }

        [JsonDataMember(Name = "textColor")]
        public  string TextColor { get; set; }

        [JsonDataMember(Name = "backgroundColor")]
        public  string BackgroundColor { get; set; }

        public int UserID { get; set; }
        [JsonDataMember(Name = "events")]
       public IList<EventInfo> Events { get; set; }

    }
}
