﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace AirCompany.Module.AirCompany
{

    public partial class Airport : XPCustomObject
    {
        Guid fOid;
        [Key(true)]
        public Guid Oid
        {
            get { return fOid; }
            set { SetPropertyValue<Guid>(nameof(Oid), ref fOid, value); }
        }
        string fName;
        public string Name
        {
            get { return fName; }
            set { SetPropertyValue<string>(nameof(Name), ref fName, value); }
        }
        string fCode;
        [Size(3)]
        public string Code
        {
            get { return fCode; }
            set { SetPropertyValue<string>(nameof(Code), ref fCode, value); }
        }
        City fCity;
        [Association(@"AirportReferencesCity")]
        public City City
        {
            get { return fCity; }
            set { SetPropertyValue<City>(nameof(City), ref fCity, value); }
        }
        string fDetail;
        [Size(2048)]
        public string Detail
        {
            get { return fDetail; }
            set { SetPropertyValue<string>(nameof(Detail), ref fDetail, value); }
        }
        [Association(@"AirplaneReferencesAirport")]
        public XPCollection<Airplane> Airplanes { get { return GetCollection<Airplane>(nameof(Airplanes)); } }
        [Association(@"AviatorReferencesAirport")]
        public XPCollection<Aviator> Aviators { get { return GetCollection<Aviator>(nameof(Aviators)); } }
    }

}