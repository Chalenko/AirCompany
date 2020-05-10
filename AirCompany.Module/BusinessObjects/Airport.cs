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
    public class Airport : BaseObject
    {
        public string Name { get; set; }

        [Size(3)]
        public string Code { get; set; }

        [Association]
        public City City { get; set; }

        [NonPersistent]
        public Country Country { get { return City.Country; } }

        [Size(2048)]
        public string Detail { get; set; }

        [Association]
        public XPCollection<Airplane> Airplans { get { return GetCollection<Airplane>("Airplans"); } }

        [Association]
        public XPCollection<Aviator> Pilots { get { return GetCollection<Aviator>("Pilots"); } }

        public Airport(Session session)
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