namespace AirCompany.Module.Controllers
{
    partial class MainWindowController
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.saGenerateTestData = new DevExpress.ExpressApp.Actions.SimpleAction(this.components);
            // 
            // saGenerateTestData
            // 
            this.saGenerateTestData.Caption = "Сформировать тестовые данные";
            this.saGenerateTestData.Category = "Tools";
            this.saGenerateTestData.ConfirmationMessage = "Все сохраненные данные будут удалены.\r\nВы хотите продолжить?";
            this.saGenerateTestData.Id = "saGenerateTestData";
            this.saGenerateTestData.TargetViewNesting = DevExpress.ExpressApp.Nesting.Root;
            this.saGenerateTestData.ToolTip = null;
            this.saGenerateTestData.TypeOfView = typeof(DevExpress.ExpressApp.View);
            this.saGenerateTestData.Execute += new DevExpress.ExpressApp.Actions.SimpleActionExecuteEventHandler(this.saGenerateTestData_Execute);
            // 
            // MainWindowController
            // 
            this.Actions.Add(this.saGenerateTestData);

        }

        #endregion

        private DevExpress.ExpressApp.Actions.SimpleAction saGenerateTestData;
    }
}
