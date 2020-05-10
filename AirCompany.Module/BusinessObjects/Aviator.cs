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
    public class Aviator : BaseObject
    {
        public string FirstName { get; set; }

        public string LastName { get; set; }

        [NonPersistent]
        public string FullName { get { return string.Format("{0} {1}", FirstName ?? "", LastName ?? ""); } }

        public DateTime BirthDate { get; set; }

        public int Age
        {
            get
            {
                int age = DateTime.Today.Year - BirthDate.Year;
                if (DateTime.Today < BirthDate.AddYears(age)) age--;
                return age;
            }
        }

        [Association]
        public Airport Airport { get; set; }

        [Association]
        public XPCollection<Airplane> Airplans { get { return GetCollection<Airplane>("Airplans"); } }

        public Aviator(Session session)
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