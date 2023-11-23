using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio1_1
{
    public partial class Admin : System.Web.UI.Page
    {
        private void BindGrid()
        {
            using (StudentRegistrationAppDataClassesDataContext studentRegistrationAppDataClassesDataContext = new StudentRegistrationAppDataClassesDataContext())
            {
                GridView1.DataSource = from stdntRegistrationAppTable in studentRegistrationAppDataClassesDataContext.StudentRegistationAppTables
                                       select stdntRegistrationAppTable;
                GridView1.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='lightgray'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
            }
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[7].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string strName = (row.FindControl("txtName") as TextBox).Text;
            string strEmail = (row.FindControl("txtEmail") as TextBox).Text;
            string strContactNo = (row.FindControl("txtContactNo") as TextBox).Text;
            string strAddress = (row.FindControl("txtAddress") as TextBox).Text;
            string strAttendDay = (row.FindControl("txtAttendDay") as TextBox).Text;
            string strCourses = (row.FindControl("txtCourses") as TextBox).Text;
            using (StudentRegistrationAppDataClassesDataContext studentRegistrationAppDataClassesDataContext = new StudentRegistrationAppDataClassesDataContext())
            { 
                StudentRegistationAppTable studentRegistationAppTable = (from c in studentRegistrationAppDataClassesDataContext.StudentRegistationAppTables
                                                                         where c.Id == studentId
                                                                         select c).FirstOrDefault();
                studentRegistationAppTable.Name = strName;
                studentRegistationAppTable.Email = strEmail;
                studentRegistationAppTable.ContactNo = strContactNo;
                studentRegistationAppTable.Address = strAddress;    
                studentRegistationAppTable.AttendDay = strAttendDay;
                studentRegistationAppTable.Courses = strCourses;
                studentRegistrationAppDataClassesDataContext.SubmitChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }


        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (StudentRegistrationAppDataClassesDataContext studentRegistrationAppDataClassesDataContext = new StudentRegistrationAppDataClassesDataContext())
            {
                StudentRegistationAppTable studentRegistationAppTable = (from c in studentRegistrationAppDataClassesDataContext.StudentRegistationAppTables
                                                                         where c.Id == studentId
                                                                         select c).FirstOrDefault();
                studentRegistrationAppDataClassesDataContext.StudentRegistationAppTables.DeleteOnSubmit(studentRegistationAppTable);
                studentRegistrationAppDataClassesDataContext.SubmitChanges();
            }
            this.BindGrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}
