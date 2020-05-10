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
    public class Country : BaseObject
    {
        public string Name { get; set; }
        
        public string Code { get; set; }

        [Association]
        public XPCollection<City> Cities { get { return GetCollection<City>("Cities"); } }

        public Country(Session session)
            : base(session)
        {
        }

        public override void AfterConstruction()
        {
            base.AfterConstruction();
        }
    }
}