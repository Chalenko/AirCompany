using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace AirCompany.Module.AirCompany
{

    public partial class City
    {
        public City(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }
    }

}
