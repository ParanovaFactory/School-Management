using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Message_Forms
{
    public partial class MessageAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Tbl_TeachersTableAdapter adapter = new Tbl_TeachersTableAdapter();

                DropDownSender.DataSource = adapter.TchList();
                DropDownSender.DataTextField = "ThcNameAndSurname";
                DropDownSender.DataValueField = "ThcId";
                DropDownSender.DataBind();

                Tbl_StudentsTableAdapter tbl = new Tbl_StudentsTableAdapter();
                DropDownReceiver.DataSource = tbl.StdList();
                DropDownReceiver.DataTextField = "StdNameAndSurname";
                DropDownReceiver.DataValueField = "StdId";
                DropDownReceiver.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_ThcMessagesTableAdapter adapter = new Tbl_ThcMessagesTableAdapter();
            adapter.AddNewThcMsg(Convert.ToInt32(DropDownSender.SelectedValue), Convert.ToInt32(DropDownReceiver.SelectedValue), txtTitle.Text, txtContext.Value);

            Response.Redirect("MessageList.aspx");
        }
    }
}