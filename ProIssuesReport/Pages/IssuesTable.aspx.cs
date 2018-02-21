using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_IssuesTable : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Button Click Event For Submission
    protected void IssueDateRange_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            conn.Open();

            //SQL Query to add data to fields
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM SubmitIssuesTable WHERE IssueDate BETWEEN '"
                                                    + IssueDateFromTextBox.Text + "' AND '" + IssueDateToTextBox.Text + "'", conn);

            //Create Dataset and GridView Table
            DataSet ds = new DataSet();
            sda.Fill(ds, "SubmitIssuesTable");
            GridView1.DataSource = ds.Tables["SubmitIssuesTable"];
            GridView1.DataBind();
            conn.Close();
        }
    }
}