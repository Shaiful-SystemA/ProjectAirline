//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectAirline
{
    using System;
    using System.Collections.Generic;
    
    public partial class FlightDetail
    {
        public string FlightNo { get; set; }
        public string FromCity { get; set; }
        public string ToCity { get; set; }
        public System.DateTime DateofDeparture { get; set; }
        public System.TimeSpan DepartureTime { get; set; }
        public System.TimeSpan ArrivalTime { get; set; }
        public int Seats { get; set; }
        public string Status { get; set; }
        public decimal price { get; set; }
    }
}