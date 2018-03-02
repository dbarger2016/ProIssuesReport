using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Adapters;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_ResponderPortal : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (sender == null)
        {
            throw new ArgumentNullException(nameof(sender));
        }

        if (e == null)
        {
            throw new ArgumentNullException(nameof(e));
        }

        if (!this.IsPostBack)
        {
            IssueSelectDD.Items.Clear();
            using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT IssueId, IssueName FROM SubmitIssuesTable WHERE IssueStatus = 'OPEN'", conn))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                conn.Open();

                IssueSelectDD.DataSource = cmd.ExecuteReader();
                IssueSelectDD.Items.Insert(0, "--Select An Issue--");
                IssueSelectDD.DataTextField = "IssueName";
                IssueSelectDD.DataValueField = "IssueName";
                IssueSelectDD.DataBind();

                conn.Close();


            }
        }
    }
    protected void IssueList_Click(object sender, EventArgs e)
    {
        string selectedValue = IssueSelectDD.SelectedValue.ToString();

        if (sender == null)
        {
            throw new ArgumentNullException(nameof(sender));
        }

        if (e == null)
        {
            throw new ArgumentNullException(nameof(e));
        }
        conn.Open();

        string sqlstring = string.IsNullOrEmpty(selectedValue) ?
            "SELECT DISTINCT IssueId, IssueName, IssueDate, IssueStatus FROM SubmitIssuesTable" 
            : "SELECT DISTINCT IssueId, IssueName, IssueDate, IssueStatus FROM SubmitIssuesTable WHERE IssueName = '" + selectedValue + "'";

        //SQL Query to add data to fields
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        //WHERE IssueName = '"+ IssueSelectDD.SelectedItem +"'
        //Create Dataset and GridView Table
        DataSet ds = new DataSet();
        sda.Fill(ds, "SubmitIssuesTable");
        IssueSelectDD.DataSource = ds.Tables["SubmitIssuesTable"];
        GridViewDrop.DataSource = ds.Tables["SubmitIssuesTable"];
        IssueSelectDD.DataBind();
        GridViewDrop.DataBind();

        conn.Close();

    }

    protected void ResponderSubmit_Click(object sender, EventArgs e)
    {
        if (sender == null)
        {
            throw new ArgumentNullException(nameof(sender));
        }

        if (e == null)
        {
            throw new ArgumentNullException(nameof(e));
        }

        conn.Open();

        SqlCommand cmd = conn.CreateCommand();

        cmd.CommandType = CommandType.Text;

        //SQL Query to add data to fields
        cmd.CommandText = "INSERT INTO ResponderTable(ResponderName, ResponderDetails, ResponderTime, IssueId) values (@ResponderName, @ResponderDetails, @ResponderTime, @IssueId)";


        cmd.Parameters.AddWithValue(parameterName: "ResponderName", value: ResponderNameTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ResponderDetails", value: ResponderDetailsTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ResponderTime", value: ResponderTimeTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "IssueId", value: IssueIdFKTextBox.Text);
        //Add Parameter for Status Update

        cmd.ExecuteNonQuery();

        conn.Close();

        Response.Redirect(url: "ResponderRedirect.aspx");
    }
    //New Function for Status Click DDL
    //UPDATE SubmitIssuesTable for IssueStatus - (default selection = current value)

}