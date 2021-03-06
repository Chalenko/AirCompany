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

    public partial class Aviator : XPCustomObject
    {
        Guid fOid;
        [Key(true)]
        public Guid Oid
        {
            get { return fOid; }
            set { SetPropertyValue<Guid>(nameof(Oid), ref fOid, value); }
        }
        string fFirstName;
        public string FirstName
        {
            get { return fFirstName; }
            set { SetPropertyValue<string>(nameof(FirstName), ref fFirstName, value); }
        }
        string fLastName;
        public string LastName
        {
            get { return fLastName; }
            set { SetPropertyValue<string>(nameof(LastName), ref fLastName, value); }
        }
        DateTime fBirthDate;
        public DateTime BirthDate
        {
            get { return fBirthDate; }
            set { SetPropertyValue<DateTime>(nameof(BirthDate), ref fBirthDate, value); }
        }
        Airport fAirport;
        [Association(@"AviatorReferencesAirport")]
        public Airport Airport
        {
            get { return fAirport; }
            set { SetPropertyValue<Airport>(nameof(Airport), ref fAirport, value); }
        }
        [Association(@"AviatorPilots_AirplaneAirplansReferencesAviator")]
        public XPCollection<AviatorPilots_AirplaneAirplans> AviatorPilots_AirplaneAirplanss { get { return GetCollection<AviatorPilots_AirplaneAirplans>(nameof(AviatorPilots_AirplaneAirplanss)); } }
    }

}
