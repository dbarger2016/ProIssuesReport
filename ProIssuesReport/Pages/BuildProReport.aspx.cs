using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_BuildProReport : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Button Click Event For Submission
    protected void BuildReport_OnClick(object sender, EventArgs e)
    {
        conn.Open();

        SqlCommand cmd = conn.CreateCommand();

        cmd.CommandType = CommandType.Text;

        //SQL Query to add data to fields
        cmd.CommandText = "INSERT INTO ReportTable(ErrorName, ErrorDescription, ErrorReporter, ErrorDate) values (@ErrorName, @ErrorDescription, @ErrorReporter, @ErrorDate)";

        cmd.Parameters.AddWithValue(parameterName: "ErrorName", value: ErrorNameTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ErrorDescription", value: ErrorDescriptionTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ErrorReporter", value: ReportingNameTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ErrorDate", value: ErrorDateTextBox.Text);


        cmd.ExecuteNonQuery();

        conn.Close();

        //Successful submission redirect
        Response.Redirect(url: "ReportRedirect.aspx");
    }
}