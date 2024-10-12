using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Student_Forms
{
    public partial class StudentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_StudentsTableAdapter adapter = new Tbl_StudentsTableAdapter();
            adapter.AddNewStd(txtName.Text, txtPhone.Text, txtEmail.Text, txtPassword.Text, txtImage.Text);
            Response.Redirect("StudentList.aspx");
        }
    }
}