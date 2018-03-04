using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_ViewReport : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Button Click Event For Submission
    protected void ReportDateRange_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            conn.Open();

            //SQL Query to add data to fields
            SqlDataAdapter sda = new SqlDataAdapter("SELECT SubmitIssuesTable.IssueId, SubmitIssuesTable.IssueName, SubmitIssuesTable.IssueDescription, SubmitIssuesTable.IssueReporter, SubmitIssuesTable.IssueDate, ResponderTable.ResponderName, ResponderTable.ResponderDetails FROM SubmitIssuesTable INNER JOIN ResponderTable ON SubmitIssuesTable.IssueId = ResponderTable.IssueId WHERE IssueDate BETWEEN '"+ ReportDateFromTextBox.Text + "' AND '" + ReportDateToTextBox.Text + "'", conn);

            //Create Dataset and GridView Table
            DataSet ds = new DataSet();
            sda.Fill(ds, "SubmitIssuesTable");
            ReportGridView.DataSource = ds.Tables["SubmitIssuesTable"];
            ReportGridView.DataBind();

            SqlCommand Countcmd = new SqlCommand
            {
                CommandText = "SELECT Count(IssueId) FROM SubmitIssuesTable",
                Connection = conn
            };

            FlagCountTextBox.Text = Countcmd.ExecuteScalar().ToString();
            conn.Close();
        }



    }


}