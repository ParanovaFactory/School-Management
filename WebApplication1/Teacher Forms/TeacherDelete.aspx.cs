using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Teacher_Forms
{
    public partial class TeacherDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ThcId"]);
            Tbl_TeachersTableAdapter adapter = new Tbl_TeachersTableAdapter();
            adapter.DeleteTch(id);
            Response.Redirect("TeacherList.aspx");
        }
    }
}