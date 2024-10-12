using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.StdPageForms
{
    public partial class StdScoreList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetscoreListTableAdapter adapter = new GetscoreListTableAdapter();
            Repeater1.DataSource = adapter.ScrList();
            Repeater1.DataBind();
        }
    }
}