using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;

namespace TonSinOA.Model
{
    public class CalendarInfo
    {
        public  int Id { get; set; }

        [JsonProperty( "title")]
        public  string Name { get; set; }

        [JsonProperty( "description")]
        public string Description { get; set; }

        [JsonProperty( "textColor")]
        public  string TextColor { get; set; }

        [JsonProperty( "backgroundColor")]
        public  string BackgroundColor { get; set; }

        public int UserID { get; set; }
        [JsonProperty( "events")]
       public IList<EventInfo> Events { get; set; }

    }
}
