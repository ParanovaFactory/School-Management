using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model.DataSet1TableAdapters;

namespace WebApplication1.Score_Forms
{
    public partial class ScoretEdit : System.Web.UI.Page
    {
        int id;

        Tbl_ScoresTableAdapter adapter = new Tbl_ScoresTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ScoreId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    txtExam1.Text = adapter.EditScrList(id)[0].Exam1.ToString();
                    txtExam2.Text = adapter.EditScrList(id)[0].Exam2.ToString();
                    txtExam3.Text = adapter.EditScrList(id)[0].Exam3.ToString();
                }
                catch (Exception)
                {
                    txtExam1.Text = "0";
                    txtExam2.Text = "0";
                    txtExam3.Text = "0";
                }
            }

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            decimal avg = (decimal.Parse(txtExam1.Text) + decimal.Parse(txtExam2.Text) + decimal.Parse(txtExam3.Text)) / 3;
            bool status;
            if (avg >= 50)
            {
                status = true;
            }
            else
            {
                status = false;
            }
            adapter.EditScr(avg, status, Convert.ToDecimal(txtExam1.Text), Convert.ToDecimal(txtExam2.Text), Convert.ToDecimal(txtExam3.Text), id);

            Response.Redirect("ScoreList.aspx");
        }
    }
}