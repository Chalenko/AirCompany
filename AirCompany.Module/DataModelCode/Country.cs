﻿using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace AirCompany.Module.AirCompany
{

    public partial class Country
    {
        public Country(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }
    }

}
