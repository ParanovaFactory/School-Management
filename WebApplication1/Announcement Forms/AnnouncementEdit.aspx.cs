using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Announcement_Forms
{
    public partial class AnnouncementEdit : System.Web.UI.Page
    {
        int id;

        Tbl_AnnouncementsTableAdapter adapter = new Tbl_AnnouncementsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["AncmtId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    txtTitle.Text = adapter.AncEditList(id)[0].AncmtTitle;
                    txtContext.Value = adapter.AncEditList(id)[0].AncmtContext;
                }
                catch (Exception)
                {
                    txtTitle.Text = "Enter title";
                    txtContext.Value = "Enter Context";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.EditAnc(txtTitle.Text, txtContext.Value,id);
            Response.Redirect("AnnouncementList.aspx");
        }
    }
}