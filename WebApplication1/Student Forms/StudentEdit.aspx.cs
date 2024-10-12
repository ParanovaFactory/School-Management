using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Student_Forms
{
    public partial class StudentEdit : System.Web.UI.Page
    {
        private int id;

        Tbl_StudentsTableAdapter adapter = new Tbl_StudentsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["StdId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    txtPhone.Text = adapter.EditStdList(id)[0].StdPhone;
                    txtEmail.Text = adapter.EditStdList(id)[0].StdMail;
                    txtPassword.Text = adapter.EditStdList(id)[0].StdPassword;
                    txtImage.Text = adapter.EditStdList(id)[0].StdImage;
                }
                catch (Exception)
                {
                    txtPhone.Text = "Enter phone number";
                    txtEmail.Text = "Enter email";
                    txtPassword.Text = "Enter password";
                    txtImage.Text = "Image Url";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                adapter.EditStd(txtPhone.Text, txtEmail.Text, txtPassword.Text, txtImage.Text, Convert.ToInt32(id));
                Response.Redirect("StudentList.aspx");
        }
    }
}