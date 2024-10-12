using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Announcement_Forms
{
    public partial class AnnouncementList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_AnnouncementsTableAdapter adapter = new Tbl_AnnouncementsTableAdapter();
            
            Repeater1.DataSource = adapter.AncList();
            Repeater1.DataBind();
        }
    }
}