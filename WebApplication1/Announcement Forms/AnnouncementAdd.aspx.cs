using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Announcement_Forms
{
    public partial class AnnouncementAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Tbl_TeachersTableAdapter adapter = new Tbl_TeachersTableAdapter();

                DropDownAnnouncer.DataSource = adapter.TchList();
                DropDownAnnouncer.DataTextField = "ThcNameAndSurname";
                DropDownAnnouncer.DataValueField = "ThcId";
                DropDownAnnouncer.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_AnnouncementsTableAdapter adapter = new Tbl_AnnouncementsTableAdapter();

            adapter.AddNewAnc(Convert.ToInt32(DropDownAnnouncer.SelectedValue), txtTitle.Text, txtContext.InnerText);

            Response.Redirect("AnnouncementList.aspx");
        }
    }
}