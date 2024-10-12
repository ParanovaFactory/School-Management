using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Student_Forms
{
    public partial class StudentDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id  = Convert.ToInt32(Request.QueryString["StdId"]);

            Tbl_StudentsTableAdapter adapter = new Tbl_StudentsTableAdapter();
            adapter.DeleteStd(id);
            Response.Redirect("StudentList.aspx");
        }
    }
}