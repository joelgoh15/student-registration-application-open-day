using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Web.Security;

namespace Portfolio1_1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                idNameTextBox.Focus();
            }
            string[] roleNames = Roles.GetRolesForUser();
            if (roleNames[0] == "admin")
            {
                idHyperLinkBackToAdminForm.Enabled = true;
                idHyperLinkBackToAdminForm.Visible = true;
            }
            else {
                idHyperLinkBackToAdminForm.Enabled = false;
                idHyperLinkBackToAdminForm.Visible = false;
            }
        }
        
        protected void idClearAllButton_Click(object sender, EventArgs e)
        {
            idNameTextBox.Text = string.Empty;
            idEmailTextBox.Text = string.Empty;
            idContactNumberTextBox.Text = string.Empty;
            idTextAreaAdress.Text = string.Empty;
            idSelectOpenDayOption.ClearSelection();
            idCheckBoxEventManagementAndMarketing.Checked = false;  
            idCheckBoxAccounting.Checked = false; 
            idCheckBoxFinance.Checked = false; 
            idCheckBoxMarketing.Checked = false; 
            idCheckBoxBusinessAdministration.Checked = false; 
            idCheckBoxCivilEng.Checked = false;
            idCheckBoxMechanicalEng.Checked = false;    
            idCheckBoxElectricalEng.Checked = false;        
            idCheckBoxElectronicEng.Checked = false;
            idCheckBoxFashionManagementAndCommmunication.Checked = false;
            idCheckBoxGraphicDesign.Checked = false;
            idCheckBoxIndoorArchitectrureAndDesign.Checked = false;
            idNameTextBox.Focus();
        }

        protected void idSubmitButton_Click(object sender, EventArgs e)
        {
            Validate();
            if (IsValid)
            { 
                ListDictionary insertParamaters = new ListDictionary();
                string courseSelected;
                courseSelected = String.Empty;  
                insertParamaters.Add("Name", idNameTextBox.Text);
                insertParamaters.Add("Email", idEmailTextBox.Text);
                insertParamaters.Add("ContactNo", idContactNumberTextBox.Text);
                insertParamaters.Add("Address", idTextAreaAdress.Text);
                insertParamaters.Add("AttendDay", idSelectOpenDayOption.SelectedItem.Text);
                if (idCheckBoxEventManagementAndMarketing.Checked == true) 
                { courseSelected += idCheckBoxEventManagementAndMarketing.Text + ", \n "; }
                if (idCheckBoxAccounting.Checked == true)
                { courseSelected += idCheckBoxAccounting.Text + ", \n "; }
                if (idCheckBoxFinance.Checked == true)
                { courseSelected += idCheckBoxFinance.Text + ", \n "; }
                if (idCheckBoxMarketing.Checked == true)
                { courseSelected += idCheckBoxMarketing.Text + ", \n "; }
                if (idCheckBoxBusinessAdministration.Checked == true)
                { courseSelected += idCheckBoxBusinessAdministration.Text + ", \n "; }
                if (idCheckBoxCivilEng.Checked == true)
                { courseSelected += idCheckBoxCivilEng.Text + ", \n "; }
                if (idCheckBoxMechanicalEng.Checked == true)
                { courseSelected += idCheckBoxMechanicalEng.Text + ", \n "; }
                if (idCheckBoxElectricalEng.Checked == true)
                { courseSelected += idCheckBoxElectricalEng.Text + ", \n "; }
                if (idCheckBoxElectronicEng.Checked == true)
                { courseSelected += idCheckBoxElectronicEng.Text + ", \n "; }
                if (idCheckBoxFashionManagementAndCommmunication.Checked == true)
                { courseSelected += idCheckBoxFashionManagementAndCommmunication.Text + ", \n "; }
                if (idCheckBoxGraphicDesign.Checked == true)
                { courseSelected += idCheckBoxGraphicDesign.Text + ", \n "; }
                if (idCheckBoxIndoorArchitectrureAndDesign.Checked == true)
                { courseSelected += idCheckBoxIndoorArchitectrureAndDesign.Text + ", \n "; }
                insertParamaters.Add("Courses", courseSelected);
                InsertLinqDataSource.Insert( insertParamaters );
                idNameTextBox.Text = string.Empty;
                idEmailTextBox.Text = string.Empty;
                idContactNumberTextBox.Text = string.Empty;
                idTextAreaAdress.Text = string.Empty;
                idSelectOpenDayOption.ClearSelection();
                idCheckBoxEventManagementAndMarketing.Checked = false;  
                idCheckBoxAccounting.Checked = false; 
                idCheckBoxFinance.Checked = false; 
                idCheckBoxMarketing.Checked = false; 
                idCheckBoxBusinessAdministration.Checked = false; 
                idCheckBoxCivilEng.Checked = false;
                idCheckBoxMechanicalEng.Checked = false;
                idCheckBoxElectricalEng.Checked = false;
                idCheckBoxElectronicEng.Checked = false;
                idCheckBoxFashionManagementAndCommmunication.Checked = false;
                idCheckBoxGraphicDesign.Checked = false;
                idCheckBoxIndoorArchitectrureAndDesign.Checked = false;
                Response.Redirect("RegistrationComplete.aspx");
            }
        }
    }
}
