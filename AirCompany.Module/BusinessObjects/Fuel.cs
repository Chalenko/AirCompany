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
    public class Fuel : BaseObject
    {
        public string Name { get; set; }

        [Association]
        public XPCollection<Airplane> Airplans { get { return GetCollection<Airplane>("Airplans"); } }

        public Fuel(Session session)
            : base(session)
        {
        }

        public override void AfterConstruction()
        {
            base.AfterConstruction();
        }
    }
}