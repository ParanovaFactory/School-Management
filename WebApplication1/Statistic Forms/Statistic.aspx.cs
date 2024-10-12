using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Statistic_Forms
{
    public partial class Statistic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_StudentsTableAdapter adapter = new Tbl_StudentsTableAdapter();
            txt1.Text = adapter.TotalStd().ToString();

            Tbl_TeachersTableAdapter adapter1 = new Tbl_TeachersTableAdapter();
            txt2.Text = adapter1.TotalThc().ToString();

            Tbl_CoursesTableAdapter adapter2 = new Tbl_CoursesTableAdapter();
            txt3.Text = adapter2.TotalCrs().ToString();
            
            Tbl_ThcMessagesTableAdapter adapter3 = new Tbl_ThcMessagesTableAdapter();
            txt5.Text = adapter3.TotalMsg().ToString();

            Tbl_AnnouncementsTableAdapter adapter4 = new Tbl_AnnouncementsTableAdapter();
            txt6.Text = adapter4.TotalAnc().ToString();

            Tbl_ScoresTableAdapter adapter5 = new Tbl_ScoresTableAdapter();
            txt4.Text = adapter5.Success().ToString();
            txt7.Text = adapter5.CSAverage().ToString();
            txt8.Text = adapter5.AIAvereage().ToString();
            txt9.Text = adapter5.MLAverage().ToString();
        }
    }
}