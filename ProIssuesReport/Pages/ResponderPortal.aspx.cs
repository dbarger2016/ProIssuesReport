using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Pages_ResponderPortal : System.Web.UI.Page
{
    //SQL Connection to ProIssuesDB Database
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProIssuesConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
       

        //IssueSelectDD.Items.Clear();
        
        if (!this.IsPostBack)
        {

            SqlCommand cmd = new SqlCommand("SELECT DISTINCT IssueId, IssueName FROM SubmitIssuesTable");

            cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                conn.Open();

                //IssueSelectDD.DataSource = cmd.ExecuteReader();
                IssueSelectDD.Items.Insert(0, "--Select An Issue--");
                IssueSelectDD.DataTextField = "IssueName";
                IssueSelectDD.DataValueField = "IssueId";
                IssueSelectDD.DataBind();
                
                conn.Close();
            

        }
    }
    protected void IssueList_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            conn.Open();

            //SQL Query to add data to fields
            SqlDataAdapter sda = new SqlDataAdapter("SELECT IssueId, IssueName, IssueDate FROM SubmitIssuesTable", conn);

            //Create Dataset and GridView Table
            DataSet ds = new DataSet();
            sda.Fill(ds, "SubmitIssuesTable");
            IssueSelectDD.DataSource = ds.Tables["SubmitIssuesTable"];
            GridViewDrop.DataSource = ds.Tables["SubmitIssuesTable"];
            //IssueSelectDD.DataBind();
            GridViewDrop.DataBind();
            conn.Close();
        }
    }
    protected void ResponderSubmit_Click(object sender, EventArgs e)
    {
        conn.Open();

        SqlCommand cmd = conn.CreateCommand();

        cmd.CommandType = CommandType.Text;

        //SQL Query to add data to fields
        cmd.CommandText = "INSERT INTO ResponderTable(ResponderName, ResponderDetails, ResponderTime) values (@ResponderName, @ResponderDetails, @ResponderTime)";

        cmd.Parameters.AddWithValue(parameterName: "ResponderName", value: ResponderNameTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ResponderDetails", value: ResponderDetailsTextBox.Text);
        cmd.Parameters.AddWithValue(parameterName: "ResponderTime", value: ResponderTimeTextBox.Text);

        cmd.ExecuteNonQuery();

        conn.Close();

        Response.Redirect(url: "ResponderRedirect.aspx");
    }
}