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

namespace AirCompany.Module.BusinessObjects
{
    [DefaultClassOptions]
    public class Airplane : BaseObject
    {
        public string BordName { get; set; }

        public double MaxSpeed { get; set; }

        public int SeatsCount { get; set; }

        [Association]
        public Fuel Fuel { get; set; }

        [Association]
        public Airport Airport { get; set; }

        public Country Manufacturer { get; set; }

        [Association]
        public XPCollection<Aviator> Pilots { get { return GetCollection<Aviator>("Pilots"); } }

        [NonPersistent]
        public int PilotCount
        {
            get
            {
                return Pilots.Count();
            }
        }

        public Airplane(Session session)
            : base(session)
        {
        }
        public override void AfterConstruction()
        {
            base.AfterConstruction();
            // Place your initialization code here (https://documentation.devexpress.com/eXpressAppFramework/CustomDocument112834.aspx).
        }
    }
}