using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Student_Forms
{
    public partial class Teacher : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_StudentsTableAdapter adapter = new Tbl_StudentsTableAdapter();
            Repeater1.DataSource = adapter.StdList();
            Repeater1.DataBind();
        }
    }
}