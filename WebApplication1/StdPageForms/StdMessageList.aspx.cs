using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.StdPageForms
{
    public partial class StdMessageList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            messagestdListTableAdapter adapter = new messagestdListTableAdapter();
            Repeater1.DataSource = adapter.StdMskList();
            Repeater1.DataBind();
        }
    }
}