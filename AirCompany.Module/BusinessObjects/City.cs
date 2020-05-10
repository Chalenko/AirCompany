using System;
using System.Linq;
using System.Text;
using DevExpress.Xpo;
using DevExpress.ExpressApp;
using System.ComponentModel;
using DevExpress.ExpressApp.DC;
using DevExpress.Data.Filtering;
using DevExpress.Persistent.Base;
using System.Collections.Generic;
using DevExpress.ExpressApp.Model;
using DevExpress.Persistent.BaseImpl;
using DevExpress.Persistent.Validation;
using System.Device.Location;

namespace AirCompany.Module.BusinessObjects
{
    [DefaultClassOptions]
    public class City : BaseObject
    {
        [Persistent]
        private DateTime burnDate;
        
        [Persistent]
        private double latitude;
        
        [Persistent]
        private double longtitude;

        public string Name { get; set; }

        public int Population { get; set; }

        [Association]
        public Country Country { get; set; }
        
        public bool Metro { get; set; }
        
        [NonPersistent, Size(4)]
        public int FoundYear
        {
            get
            {
                return burnDate.Year;
            }
            set
            {
                burnDate = new DateTime(value, CityDay.Month, CityDay.Day);
            }
        }

        [NonPersistent]
        public DateTime CityDay
        {
            get
            {
                return new DateTime(DateTime.Today.Year, burnDate.Month, burnDate.Day);
            }
            set
            {
                burnDate = new DateTime(FoundYear, 1, 1).AddDays(value.DayOfYear - 1);
            }
        }

        [NonPersistent]
        public GeoCoordinate Position
        {
            get
            {
                return new GeoCoordinate(latitude, longtitude);
            }
            set
            {
                latitude = value.Latitude;
                longtitude = value.Longitude;
            }
        }
        
        [Association]
        public XPCollection<Airport> Airports { get { return GetCollection<Airport>("Airports"); } }

        public City()
            : base()
        {
            // This constructor is used when an object is loaded from a persistent storage.
            // Do not place any code here.
        }

        public City(Session session)
            : base(session)
        {
            // This constructor is used when an object is loaded from a persistent storage.
            // Do not place any code here.
        }

        public override void AfterConstruction()
        {
            base.AfterConstruction();
            // Place here your initialization code.
        }
    }

}