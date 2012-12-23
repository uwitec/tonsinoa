using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TonSinOA.Model
{
   
   public  class ExtTreeNode
    {
        public DateTime AddDate { get; set; }
        public string cls { get; set; }
        public bool DelFlag { get; set; }
        public string Description { get; set; }
        public bool draggable { get; set; }
        public string href { get; set; }
        public string hrefTarget { get; set; }
        public string icon { get; set; }
        public string id { get; set; }
        public bool IsChecked { get; set; }
        public bool IsRoot { get; set; }
        public bool leaf { get; set; }
        public string NodeType { get; set; }
        public string parentNodeId { get; set; }
        public string PID { get; set; }
        public string text { get; set; }
        public string TypeEName { get; set; }
        public string TypeID { get; set; }
        public string TypeTitle { get; set; }
        public string iconCls { get; set; }
       public string action { get; set; }
    }
}
