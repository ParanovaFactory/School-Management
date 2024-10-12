using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Teacher_Forms
{
    public partial class TeacherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_TeachersTableAdapter adapter = new Tbl_TeachersTableAdapter();
            Repeater1.DataSource = adapter.TchList();
            Repeater1.DataBind();
        }
    }
}