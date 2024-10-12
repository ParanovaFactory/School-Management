using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Course_Forms
{
    public partial class CourseAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Tbl_CoursesTableAdapter adapter = new Tbl_CoursesTableAdapter();
            adapter.AddNewCrs(txtCourse.Text);
            Response.Redirect("CourseList.aspx");
        }
    }
}