using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Announcement_Forms
{
    public partial class AnnouncementDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["AncmtId"]);
            Tbl_AnnouncementsTableAdapter adapter = new Tbl_AnnouncementsTableAdapter();

            adapter.DeleteAnc(id);
            Response.Redirect("AnnouncementList.aspx");
        }
    }
}