using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_SubmitIssues : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    //Button Click Event For Submission
    protected void IssueSubmit_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            conn.Open();

            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandType = CommandType.Text;

            //SQL Query to add data to fields
            cmd.CommandText = "INSERT INTO SubmitIssuesTable(IssueName, IssueDescription, IssueReporter, IssueDate, IssueStatus) values (@IssueName, @IssueDescription, @IssueReporter, @IssueDate, @IssueStatus)";

            cmd.Parameters.AddWithValue(parameterName: "IssueName", value: IssueNameTextBox.Text);
            cmd.Parameters.AddWithValue(parameterName: "IssueDescription", value: IssueDescriptionTextBox.Text);
            cmd.Parameters.AddWithValue(parameterName: "IssueReporter", value: ReporterNameTextBox.Text);
            cmd.Parameters.AddWithValue(parameterName: "IssueDate", value: DateReportedTextBox.Text);
            cmd.Parameters.AddWithValue(parameterName: "IssueStatus", value: IssueStatusTextBox.Text);

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect(url: "IssueRedirect.aspx");
        }
    }

    protected void IssueStatusTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}