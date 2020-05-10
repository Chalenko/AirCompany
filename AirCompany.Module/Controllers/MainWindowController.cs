using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.Data.Filtering;
using DevExpress.ExpressApp;
using DevExpress.ExpressApp.Actions;
using DevExpress.ExpressApp.Editors;
using DevExpress.ExpressApp.Layout;
using DevExpress.ExpressApp.Model.NodeGenerators;
using DevExpress.ExpressApp.SystemModule;
using DevExpress.ExpressApp.Templates;
using DevExpress.ExpressApp.Utils;
using DevExpress.Persistent.Base;
using DevExpress.Persistent.Validation;
using DevExpress.XtraEditors;
using DevExpress.Xpo;
using DevExpress.ExpressApp.Xpo;
using System.IO;

namespace AirCompany.Module.Controllers
{
    // For more typical usage scenarios, be sure to check out https://documentation.devexpress.com/eXpressAppFramework/clsDevExpressExpressAppViewControllertopic.aspx.
    public partial class MainWindowController : ViewController
    {
        public MainWindowController()
        {
            InitializeComponent();
        }

        protected override void OnActivated()
        {
            base.OnActivated();
            // Perform various tasks depending on the target View.
        }
        protected override void OnDeactivated()
        {
            // Unsubscribe from previously subscribed events and release other references and resources.
            base.OnDeactivated();
        }

        private void saGenerateTestData_Execute(object sender, SimpleActionExecuteEventArgs e)
        {
            Session currentSession = ((XPObjectSpace)ObjectSpace).Session;
            //System.Windows.Forms.MessageBox.Show(Directory.GetCurrentDirectory());
            currentSession.ExecuteNonQuery(
                "USE [master] " +
                "ALTER DATABASE [AirCompany] SET SINGLE_USER WITH ROLLBACK IMMEDIATE " +
                string.Format("RESTORE DATABASE [AirCompany] FROM  DISK = N'{0}\\AirCompany.bak' WITH  FILE = 2,  NOUNLOAD,  REPLACE,  STATS = 5 ", Directory.GetCurrentDirectory()) +
                "ALTER DATABASE [AirCompany] SET MULTI_USER ");
        }
    }
}
