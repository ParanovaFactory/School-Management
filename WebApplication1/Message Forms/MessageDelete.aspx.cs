using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Message_Forms
{
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MsgThcId"]);
            messagethcListTableAdapter adapter = new messagethcListTableAdapter();

            adapter.DeleteMsgThc(id);
            Response.Redirect("MessageList.aspx");
        }
    }
}