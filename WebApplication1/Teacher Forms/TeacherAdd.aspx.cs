using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Teacher_Forms
{
    public partial class TeacherEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_CoursesTableAdapter adapter = new Tbl_CoursesTableAdapter();
            DropDownCourse.DataSource = adapter.CrsList();
            DropDownCourse.DataTextField = "CourseName";
            DropDownCourse.DataValueField = "CoureseId";
            DropDownCourse.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_TeachersTableAdapter adapter = new Tbl_TeachersTableAdapter();
            adapter.AddNewTch(txtName.Text, txtImage.Text, Convert.ToInt32(DropDownCourse.SelectedValue));
            Response.Redirect("TeacherList.aspx");
        }
    }
}