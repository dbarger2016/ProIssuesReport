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
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM ReportTable WHERE ErrorDate BETWEEN '"
                                                    + ReportDateFromTextBox.Text + "' AND '" + ReportDateToTextBox.Text + "'", conn);

            //SqlDataAdapter sda = new SqlDataAdapter("SELECT ReportTable.ErrorName, ReportTable.ErrorDescription,        ReportTable.ErrorReporter, ReportTable.ErrorDate, ResponderTable.ResponderName, ResponderTable.ResponderDetails, ResponderTable.ResponderTime FROM ReportTable RIGHT JOIN ResponderTable ON ReportTable.ResponderId = ResponderTable.ResponderId WHERE ErrorDate BETWEEN '" + ReportDateFromTextBox.Text + "' AND '" + ReportDateToTextBox.Text + "'", conn);


            //Create Dataset and GridView Table
            DataSet ds = new DataSet();
            DataSet nds = new DataSet();
            sda.Fill(ds, "ReportTable");
            sda.Fill(nds, "ResponderTable");
            ReportGridView.DataSource = ds.Tables["ReportTable"];
            ReportGridView.DataSource = nds.Tables["ResponderTable"];
            ReportGridView.DataBind();
            ReportGridView.DataBind();
            conn.Close();
        }
    }
}