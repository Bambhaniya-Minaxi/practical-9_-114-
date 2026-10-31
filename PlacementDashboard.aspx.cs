using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class PlacementDashboard : System.Web.UI.Page
{
    string cs =
    ConfigurationManager.ConnectionStrings[
    "PlacementDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = @"SELECT StudentID, Name, Branch,Company, Package, PlacementDate
 FROM Placement";
            SqlDataAdapter da =
            new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvStudents.DataSource = dt;
            gvStudents.DataBind();
        }
    }
}
