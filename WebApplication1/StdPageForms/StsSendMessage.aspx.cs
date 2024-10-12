using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.StdPageForms
{
    public partial class StsSendMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Tbl_StudentsTableAdapter tbl = new Tbl_StudentsTableAdapter();

                DropDownSender.DataSource = tbl.StdList();
                DropDownSender.DataTextField = "StdNameAndSurname";
                DropDownSender.DataValueField = "StdId";
                DropDownSender.DataBind();

                
                DropDownReceiver.DataSource = tbl.StdList();
                DropDownReceiver.DataTextField = "StdNameAndSurname";
                DropDownReceiver.DataValueField = "StdId";
                DropDownReceiver.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_StdMessagesTableAdapter adapter = new Tbl_StdMessagesTableAdapter();
            adapter.AddNewStdMsg(Convert.ToInt32(DropDownSender.SelectedValue), Convert.ToInt32(DropDownReceiver.SelectedValue), txtTitle.Text, txtContext.Value);

            Response.Redirect("StdMessageList.aspx");
        }
    }
}